#!/bin/bash

#This script will install raspistillWeb and Bisque API in your virtalenv

#Firstly upgrade setuptools
cd ..
bin/pip install --upgrade setuptools


#Develop raspistillWeb
bin/python setup.py develop
bin/initialize_raspistillweb_db development.ini

#Install BisqueAPI
bin/pip install requests==2.7.0
bin/pip install BeautifulSoup4
CFLAGS="-O0" bin/pip install lxml
hg clone http://biodev.ece.ucsb.edu/hg/bisque/
cd bisque/bqapi/
../../bin/python setup.py build_py
../../bin/python setup.py install

echo "INSTALLATION COMPLETED"