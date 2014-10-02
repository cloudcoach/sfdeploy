#!/bin/sh

MIGTOOLDIR=/var/lib/jenkins/salesforce-build-tools/lib/

#Check the version number argument is passed
echo $1 | grep -E -q '^[0-9]+$' || exit "Integer argument required e.g 25, $1 provided"

#Get the migration tool from the server
wget -O migration-tool.zip https://na1.salesforce.com/dwnld/SfdcAnt/salesforce_ant_$1.0.zip

#make the directory and the parents if it doesn't exist
mkdir -p $MIGTOOLDIR

#unzip the jar file to the required directory
unzip migration-tool.zip ant-salesforce.jar -d $MIGTOOLDIR

rm migration-tool.zip

