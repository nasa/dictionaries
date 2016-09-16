# Dictionaries
Collection of NASA thesauri, dictionaries, taxonomies and related documents

## Installation

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


