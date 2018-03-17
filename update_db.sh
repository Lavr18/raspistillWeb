#!/bin/bash

#Script to automatically initialise alembic to do the db migration

# Location of raspistillWeb. Change if required.
RASPISTILLWEB_LOCATION="/home/pi/test_phenotiki/env"


echo "location is $RASPISTILLWEB_LOCATION"


#Initialize alembic
cd $RASPISTILLWEB_LOCATION
alembic init alembic


#Change alembic files to add the path to db
sed -i "/.*sqlalchemy.url =*/c\sqlalchemy.url = sqlite:///$RASPISTILLWEB_LOCATION/test_raspistillWeb/raspistillweb.sqlite" \
$RASPISTILLWEB_LOCATION/alembic.ini #alembic.ini

sed -i "/from logging.config import fileConfig/aimport os, sys\nsys.path.insert(0,'$RASPISTILLWEB_LOCATION/test_raspistillWeb/raspistillweb')" \
$RASPISTILLWEB_LOCATION/alembic/env.py

sed -i "/target_metadata = None/c\from models import Base\ntarget_metadata = Base.metadata" \
$RASPISTILLWEB_LOCATION/alembic/env.py


#Move the migration script to the versions folder
mv $RASPISTILLWEB_LOCATION/test_raspistillWeb/68f0819eb63b_added_settings_table.py $RASPISTILLWEB_LOCATION/alembic/versions

#Run upgrade command
cd $RASPISTILLWEB_LOCATION
alembic upgrade head