#!/bin/bash

#This script will install raspistillWeb and Bisque API in your virtalenv

#Firstly install all the dependencies
cd ~/phenotiki/env
bin/pip install pyramid
bin/pip install pyramid_debugtoolbar
bin/pip install waitress
bin/pip install pyramid_mako
bin/pip install exifread
bin/pip install pyramid_tm
bin/pip install SQLAlchemy
bin/pip install transaction
bin/pip install zope.sqlalchemy
bin/pip install Pillow
bin/pip install picamera
bin/pip install RPi.GPIO
bin/pip install alembic

#Develop raspistillWeb
cd raspistillWeb
../bin/python setup.py develop
../bin/initialize_raspistillweb_db development.ini

#Install BisqueAPI
cd ~/phenotiki/env/
bin/pip install requests==2.7.0
bin/pip install BeautifulSoup4
bin/pip install lxml
hg clone http://biodev.ece.ucsb.edu/hg/bisque/
cd bisque/bqapi/
../../bin/python setup.py build_py
../../bin/python setup.py install

echo "INSTALLATION COMPLETED"