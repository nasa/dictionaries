This repository contains a collection of NASA thesauri, dictionaries, taxonomies, and related documents, as well as a Python script to load concepts from a SKOS file.

**What You'll Find Here**
* Dictionaries
  * Acronyms
    * *Acronym Dictionary* from the NASA Center for AeroSpace Information
    * Human Space Flight acronym finder
    * Johnson Space Center (JSC) "Acronym Central"
    * Kennedy Space Center (KSC) list of acronyms
  * *Concepts of Mathematics for Students of Physics and Engineering: A Dictionary* by Joseph C. Kolecki
  * Planetary Data System Data Dictionary
* Taxonomies
  * NASA Taxonomy 2.0
* Thesauri
  * NASA Thesaurus
* Python script
  * bin/*load_terms_from_skos.py*
  * *requirements.txt*


## Installation of Python Environment

There are any number of ways to set up your python environment to
use this code. My preferred one (described below) is using
[virtualenv](https://pypi.python.org/pypi/virtualenv).

```bash
# clone this repository to your local machine
git clone https://github.com/nasa/dictionaries.git

# switch to the local repository dir
cd dictionaries

# install virtualenv environment for python3
virtualenv -p <python_3_exe> ./env

# activate your environment
source lib/bin/activate.sh

# install requirements
pip install -r requirements.txt

#add aggregate dictionary code to python path
# there are many ways to do this, but for example
# for the bash shell on MacOS/Linux the command is:
export PYTHONPATH=`pwd`

```
