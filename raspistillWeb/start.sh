#! /bin/sh

# Check if the package mercurial is installed
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' mercurial|grep "install ok installed")
echo Checking for mercurial: $PKG_OK
if [ "" == "$PKG_OK" ]; then
  echo "No mercurial. Setting up mercurial."
  sudo apt-get --yes install mercurial
fi

# Check if the package python2.7-dev is installed
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' python2.7-dev|grep "install ok installed")
echo Checking for python2.7-dev: $PKG_OK
if [ "" == "$PKG_OK" ]; then
  echo "No python2.7-dev. Setting up python2.7-dev."
  sudo apt-get --yes install python2.7-dev
fi

# Check if the package python-virtualenv is installed
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' python-virtualenv|grep "install ok installed")
echo Checking for python-virtualenv: $PKG_OK
if [ "" == "$PKG_OK" ]; then
  echo "No python-virtualenv. Setting up python-virtualenv."
  sudo apt-get --yes install python-virtualenv
fi

# Check if the package python-setuptools is installed
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' python-setuptools|grep "install ok installed")
echo Checking for python-setuptools: $PKG_OK
if [ "" == "$PKG_OK" ]; then
  echo "No python-setuptools. Setting up python-setuptools."
  sudo apt-get --yes install python-setuptools
fi

# Check if the package libjpeg8-dev is installed
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' libjpeg8-dev|grep "install ok installed")
echo Checking for libjpeg8-dev: $PKG_OK
if [ "" == "$PKG_OK" ]; then
  echo "No libjpeg8-dev. Setting up libjpeg8-dev."
  sudo apt-get --yes install libjpeg8-dev
fi

# Check if the package zlib1g-dev is installed
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' zlib1g-dev|grep "install ok installed")
echo Checking for zlib1g-dev: $PKG_OK
if [ "" == "$PKG_OK" ]; then
  echo "No zlib1g-dev. Setting up zlib1g-dev."
  sudo apt-get --yes install zlib1g-dev
fi

# Check if the package libxml2-dev is installed
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' libxml2-dev|grep "install ok installed")
echo Checking for libxml2-dev: $PKG_OK
if [ "" == "$PKG_OK" ]; then
  echo "No libxml2-dev. Setting up libxml2-dev."
  sudo apt-get --yes install libxml2-dev
fi

# Check if the package libxslt1-dev is installed
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' libxslt1-dev|grep "install ok installed")
echo Checking for libxslt1-dev: $PKG_OK
if [ "" == "$PKG_OK" ]; then
  echo "No libxslt1-dev. Setting up libxslt1-dev."
  sudo apt-get --yes install libxslt1-dev
fi

# Start the raspistillWeb
cd ~/phenotiki/env/raspistillWeb
../bin/pserve development.ini