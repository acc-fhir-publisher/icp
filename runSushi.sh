#!/bin/bash

# Run sushi to build the local IG
# if that runs OK, then execute a number of scripts that build
# some of the summary pages.


sushi  -s -o .      # need to include the snapshot

if [[ $? -eq 0 ]]
then

# create the 2 summary files extensions.xml & profiles.xml. Saves in both /input.. & /fsh/ig-data...

# echo "Updating the global summary of extensions and terminology"
# ../globalScripts/makeGlobalIGSummary.js
echo


echo "Creating Profiles and extensions summary pages..."
./localscripts/makeProfilesAndExtensions.js icp
echo

echo "Making local terminology summary"  
#../scripts/makeTerminologySummary.js ICP
# python3 ./localscripts/makeTermSummary.py
./localscripts/makeTerminologySummary.js
echo

echo "Making API summary"
./localscripts/makeCapabilityStatement.js icp
echo

# echo "Making NamingSystem summary"
# ../scripts/makeNamingSystemSummary.js ICP

echo "validating examples against openapi"
cd ./openapi
validate.sh

else 
echo
echo
echo "There were errors, so the other scripts weren't run..."
fi



