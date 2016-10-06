'''
Script to load concepts from a SKOS file. Meant to be hacked... 

Created on Sep 16, 2016

@author:     thomas
@copyright:  2016 Brian Thomas/NASA. All rights reserved.
@license:    MIT
@contact:    brian.a.thomas@nasa.gov

'''

import logging

LOG = logging.getLogger(__name__)
  
def load_skos(skos_file):
    import codecs
    import rdflib
    import rdflib.namespace as ns

    LOG.info("Loading from file:"+skos_file)

    data = None
    # try a few encodings
    encodings = ["cp037", "utf-8", "ascii", "iso-8859-1", "iso-8859-15", "utf-8-sig", 'utf-16']
    while (data==None and len(encodings) > 0):
        try:
            with codecs.open (skos_file, 'r', encodings.pop() ) as f:
                data=f.read().replace('\n', '')
        except Exception:
            pass
    
    if (data==None):
        LOG.error("Error data not in an encoding this program can understand, bailing")
        quit()
        
    LOG.info("Creating graph representation of SKOS")
    graph = rdflib.ConjunctiveGraph()
    graph.parse(data=data, format="application/rdf+xml")
    
    # EXAMPLES of parsing SKOS..
    # go through all of the concepts in our file, build
    # a graph object we will later parse
    LOG.info("Find concepts in graph: "+str(ns.SKOS.Concept))
    concepts = graph.triples((None, ns.RDF.type, ns.SKOS.Concept))
    
    # Now parse out attributes of the concepts
    LOG.info("Parse a few properties of skos:Concepts")
    terms_loaded = 0
    try:
        
        for x in concepts:
            #print ("type:"+str(type(x[0])))
            #print ("Concept:"+str(x[0]))
    
            labels = []
            # find the prefLabel
            for l in graph.triples((x[0], ns.SKOS.prefLabel, None)): 
                LOG.debug(" preflabel: "+str(l[2]))
                labels.append(l[2])
                
            # get the altLabels
            altLabels = []
            for l in graph.triples((x[0], ns.SKOS.altLabel, None)): 
                altLabels.append(l[2])
                
            # get the definition, if defined, from skos:definition
            definition = ""
            for d in graph.triples((x[0], ns.SKOS.definition, None)): 
                definition += str(d[2])
    
            # now handle hyper-/hyponym relationships     
            broader = []
            for l in graph.triples((x[0], ns.SKOS.broader, None)): 
                # pull the concept behind the relationship
                for b in graph.triples((l[2], ns.RDF.type, ns.SKOS.Concept)): 
                    # pull the preflabel for the broader concept
                    for n in graph.triples((b[0], ns.SKOS.prefLabel, None)): 
                        broader.append(n[2])
                    
            hypernyms = []
            for b in broader:
                term = m.Term(namespace_name, b)
                hypernyms.append(term)
            
            # IF you do broader, you probably dont need to do narrower, as they
            #duplicate each otehr
            #for l in graph.triples((x[0], ns.SKOS.narrower, None)): 
            #    LOG.debug(" narrower: "+str(l[2]))

            terms_loaded += 1
    
    except ValueError as ve:
        LOG.critical("FATAL condition detected: Loading terminated before finish, caught exception: "+str(ve))
    
    LOG.info("Finished : Loaded "+str(terms_loaded)+" Concepts as Terms")


if __name__ == '__main__':
    import argparse
    
    # no need to see debugging stuff in production
    logging.basicConfig(level=logging.INFO)
    # turn down chattyness of related code loggers
    
    # Use nargs to specify how many arguments an option should take.
    ap = argparse.ArgumentParser(description='Loader for component dictionary into Aggregate Dictionary from a SKOS file')
    ap.add_argument('-s', '--skos', type=str, help='SKOS file to load concepts from')

    # parse argv
    opts = ap.parse_args()
    
    if not opts.skos: 
        print ("SKOS file name is required.")        
        ap.print_usage()
        quit()

    load_skos(opts.skos)
    
