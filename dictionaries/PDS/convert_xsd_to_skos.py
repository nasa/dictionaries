'''
Script to convert PDS XSD schema structure to SKOS which is loadable
into an instance of the aggregate-dictionary.
 
Created on Jan 22, 2016

@author: thomas
@license: Apache
@copyright:  2015 Brian Thomas/NASA. All rights reserved.
@contact:    brian.a.thomas@nasa.gov
'''

import logging
LOG = logging.getLogger(__name__)
OUTPUT_FILE = "output.xml"

NAMESPACES = {"xs": "http://www.w3.org/2001/XMLSchema",
              "pds": "http://pds.nasa.gov/pds4/pds/v1"
             }

def _parent_from_content_node (node):
    
    parent = None
    if len(node) > 0:
        content = node.pop()
        
        # may now either be in 'restriction' or 'extension'
        extension = content.xpath('./xs:extension', namespaces=NAMESPACES)
        if len(extension) > 0:
            parent = extension.pop().xpath('@base').pop()
        else:
            restrict = content.xpath('./xs:restriction', namespaces=NAMESPACES)
            if len(restrict) > 0:
                parent = restrict.pop().xpath('@base').pop()
            else:
                raise Exception("Got Content node but NO extension/restriction child")
            
    # strip off the leading namespace prefix
    if parent != None and "pds:" in parent:
        parent = parent.replace("pds:", "")
    
    return parent

def convert_xsd_to_skos (file):
    from lxml import etree
    from rdflib import Graph, Namespace, RDF, URIRef, Literal
    
    LOG.info("Start conversion of data in file:"+file)
    
    LOG.debug("Loading data from file:"+file)
    data=None
    with open (file, 'rb') as f:
        data=f.read()
        
    LOG.info("Creating SKOS graph representation")
    graph = Graph()

    skos = Namespace('http://www.w3.org/2004/02/skos/core#')
    graph.bind('skos', skos)
    
    LOG.debug("parse XSD complexTypes to concepts") 
    doc = etree.fromstring(data.strip())
    
    # gather ComplexTypes, which are the definitions of Concepts
    for ctype in doc.xpath("//xs:complexType", namespaces=NAMESPACES):
        
        # get the name
        uri = ctype.xpath("@name", namespaces=NAMESPACES).pop()
        name = uri.replace('_', ' ')
        LOG.debug("ctype name: "+name)
        
        # capture the definition, if provided
        definition = ""
        desc = ctype.xpath(".//xs:documentation", namespaces=NAMESPACES)
        if len(desc) > 0:
            # Note: should be using regex to match the long embedded whitespace, but I am
            # feeling very lazy today, just make it explicit since this is NOT supposed 
            # to be more than a one-off script to parse only ONE file, ever
            definition = desc.pop().xpath("text()").pop().replace('\n', ' ').replace('         ', ' ').strip() 
            
        LOG.debug("       def: "+definition)
        
        # find if complexContent, in which case it has parent class
        ccontent = ctype.xpath(".//xs:complexContent", namespaces=NAMESPACES)
        parent = _parent_from_content_node(ccontent)
        if not parent:
            scontent = ctype.xpath(".//xs:simpleContent", namespaces=NAMESPACES)
            parent = _parent_from_content_node(scontent)
        
        # create the SKOS statements
        graph.add((URIRef(uri), RDF['type'], skos['Concept']))
        graph.add((URIRef(uri), skos['prefLabel'], Literal(name, lang='en')))
        graph.add((URIRef(uri), skos['definition'], Literal(definition, lang='en')))
        if parent:
            # add in skos:broader relationship IF we have a parent for this Concept
            LOG.debug("       parent: "+str(parent)+"\n")
            graph.add((URIRef(uri), skos['broader'], URIRef(parent)))
    
    '''
    # Needed? Gather up element (instances) of types
    elements = doc.xpath("//xs:element", namespaces=NAMESPACES)
    for elem in elements:
        name = elem.xpath("@name", namespaces=NAMESPACES).pop()
        type = elem.xpath("@type", namespaces=NAMESPACES).pop()
        LOG.info("element: "+name+" type:"+type)
    '''
        
    #graph.serialize(destination='output.ttl', format='turtle')
    graph.serialize(destination=OUTPUT_FILE, format='pretty-xml')
    
    LOG.info("Finished conversion, content output to file: "+OUTPUT_FILE)

if __name__ == '__main__':
    import argparse
    
    # no need to see debugging stuff in production
    logging.basicConfig(level=logging.INFO)
    
    # TODO: parse out target directory to install in
    # Use nargs to specify how many arguments an option should take.
    ap = argparse.ArgumentParser(description='load from PDS XSD file and convert to SKOS')
    ap.add_argument('-f', '--file', type=str, help='PDS XSD file to convert')

    # parse argv
    opts = ap.parse_args()
    
    if not opts.file:
        print ("PDS XSD file name is required.")        
        ap.print_usage()
        quit()

    # execute the install in db_dir 
    convert_xsd_to_skos(opts.file)
    