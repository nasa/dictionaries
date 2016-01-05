'''
Script to convert the HTML acronym table into SKOS. 
 
Created on Jan 5, 2016

@author:     thomas
@copyright:  2015 Brian Thomas/NASA. All rights reserved.
@license:    Apache
@contact:    brian.a.thomas@nasa.gov
'''

import logging
from rdflib import Graph, Namespace, RDF, URIRef, Literal

LOG = logging.getLogger(__name__)

def __empty_skos():
    import codecs

    data=None
    # try a few encodings
    encodings = ["utf-8", "iso-8859-1", "iso-8859-15"]
    while (data==None and len(encodings) > 0):
        try:
            with codecs.open ("empty.skos", 'r', encodings.pop() ) as f:
                data=f.read().replace('\n', '')
        except Exception:
            pass

    if (data==None):
        LOG.error("Error base empty.skos data not in an encoding this program can understand, bailing")
        quit()

    return data

def convert_to_skos(html_file):
    from bs4 import BeautifulSoup

    LOG.info("Loading to memory "+html_file)
    soup = BeautifulSoup(open(html_file), 'html.parser')

    LOG.info("Creating SKOS graph representation")
    graph = Graph()

    skos = Namespace('http://www.w3.org/2004/02/skos/core#')
    graph.bind('skos', skos)

    terms = dict() 
    for table in soup.find_all('table'): 
        for row in table.find_all('tr'):
            data = row.find_all('td')
            if len(data) == 2:
                #print (name + " : "+definition)
                name = data[0].text
                definition = data[1].text
                uri = name

                count = 0
                while (uri in terms): 
                    uri = name + str(count) 
                    count += 1

                terms[uri] = True

                graph.add((URIRef(uri), RDF['type'], skos['Concept']))
                graph.add((URIRef(uri), skos['prefLabel'], Literal(name, lang='en')))
                graph.add((URIRef(uri), skos['definition'], Literal(definition, lang='en')))
    

    #graph.serialize(destination='output.ttl', format='turtle')
    graph.serialize(destination='output.xml', format='pretty-xml')

    LOG.info("Finished")


if __name__ == '__main__':
    import argparse
    
    # no need to see debugging stuff in production
    logging.basicConfig(level=logging.INFO)
    
    # TODO: parse out target directory to install in
    # Use nargs to specify how many arguments an option should take.
    ap = argparse.ArgumentParser(description='convert to SKOS script')
    ap.add_argument('-f', '--file', type=str, help='HTML file to load acronyms/concepts from')

    # parse argv
    opts = ap.parse_args()
    
    if not opts.file:
        print ("HTML file name is required.")        
        ap.print_usage()
        quit()

    # execute the install in db_dir 
    convert_to_skos(opts.file)
    
