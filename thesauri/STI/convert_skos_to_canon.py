'''
Script to convert STI SKOS non-canon structure back to canon.
For example, to put term/concept definitions back under "skos:definition"
nodes rather than in zthes:termNote relationships.
 
Created on Dec 11, 2015

@author: thomas
'''

import logging
import rdflib

LOG = logging.getLogger(__name__)

DEF_LITERAL = rdflib.term.Literal('Definition')
    
def load_skos(skos_file):
    import codecs
    import rdflib.namespace as ns
    
    LOG.info("Loading "+skos_file)
    
    data=None
    # try a few encodings
    encodings = ["utf-8", "iso-8859-1", "iso-8859-15"]
    while (data==None and len(encodings) > 0):
        try:
            with codecs.open (skos_file, 'r', encodings.pop() ) as f:
                data=f.read().replace('\n', '')
        except Exception: 
            pass
    
    if (data==None):
        LOG.error("Error data not in an encoding this program can understand, bailing")
        quit()
        

    LOG.info("Creating graph representation")
    graph = rdflib.ConjunctiveGraph()
    graph.parse(data=data, format="application/rdf+xml")
    
    # got through all of the concepts
    # find definitions, and add them as skos:definition
    #
    termNote = rdflib.term.URIRef("http://synaptica.net/zthes/termNote")
    definition = rdflib.term.Literal("Definition")
    zlabel = rdflib.term.URIRef("http://synaptica.net/zthes/label")
    for x in graph.triples((None, ns.RDF.type, ns.SKOS.Concept)): 
        
        # find IF termNotes for "Definition" exist for this concept
        for tn in graph.triples((x[0], termNote, definition)): 
            id = "Definition-" + str(x[0]).replace("#","") 
            for d in graph.triples((rdflib.term.URIRef(id), zlabel, None)): 
                #print ("Concept "+str(x[0])+" skos:definition:"+str(d[2]))
                # add the content as skos:definition to the concept
                graph.add((x[0], ns.SKOS.definition, d[2])) 

        #for l in graph.triples((x[0], ns.SKOS.narrower, None)): 
        #    LOG.debug(" narrower: "+str(l[2]))
    
    #graph.serialize(destination='output.ttl', format='turtle')
    graph.serialize(destination='output.xml', format='pretty-xml')

    LOG.info("Finished")


if __name__ == '__main__':
    import argparse
    
    # no need to see debugging stuff in production
    logging.basicConfig(level=logging.INFO)
    
    # TODO: parse out target directory to install in
    # Use nargs to specify how many arguments an option should take.
    ap = argparse.ArgumentParser(description='NamespacedDictionary load from SKOS script')
    ap.add_argument('-f', '--file', type=str, help='SKOS file to load concepts from')

    # parse argv
    opts = ap.parse_args()
    
    if not opts.file:
        print ("SKOS file name is required.")        
        ap.print_usage()
        quit()

    # execute the install in db_dir 
    load_skos(opts.file)
    
