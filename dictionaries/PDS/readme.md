### About the PDS

The [Planetary Data System (PDS)](https://pds.nasa.gov/) is a long-term archive of digital data products returned from NASA's planetary missions, and from other kinds of flight and ground-based data acquisitions, including laboratory experiments. The archive is actively managed by planetary scientists.

The PDS Data Dictionary provides the definitions of PDS objects and keywords.

The official PDS Data Dictionary changes over time, and users need to download updated copies of the pdsdd.full to make use of these changes.

**Files**

* XML Schema and Schematron files from [Planetary Data System site](https://pds.jpl.nasa.gov/pds4/schema/released/)
  * Version v1 (1.4.0.0)
    * *PDS4_PDS_1400.readme*
    * *PDS4_PDS_1400.sch*: Schematron file
    * *PDS4_PDS_1400.skos*: SKOS file
    * *PDS4_PDS_1400.xml*: XML product label
    * *PDS4_PDS_1400.xsd*: XML/Schema file
  * Version v1 (1.7.0.0)
    * *DS4_PDS_OWL_1700.rdf*:	Ontology file
* PDS Data Dictionary files
  * *datadictionary_1r96.zip* - ?
  * *pdsdd.full* - the PDS Data Dictionary used with software tools
  * *pdsdd_linux.idx* - the indexed version of the PDS Data Dictionary, for use on the Linux platform
  * *pdsdd_solaris.idx* - the indexed version of the PDS Data Dictionary, for use on the Solaris platform
  * *pdsdd_windows.idx* - the indexed version of the PDS Data Dictionary, for use on the Windows platform
  * *readme.txt* - a brief explanation on how to use the PDS Data Dictionary files
* *convert_xsd_to_skos.py*: Python script to convert PDS XSD schema structure to SKOS which is loadable into an instance of the aggregate-dictionary

**More Information**

* [PDS4 Data Standards](https://pds.nasa.gov/datastandards/about/): includes information about what PDS4 is, format policy, and training materials
* [Tools](https://pds.nasa.gov/tools/about/): software services, tools and libraries considered the core software for working with PDS4 data
