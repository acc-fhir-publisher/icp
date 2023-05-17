#!/bin/bash
cp /root/.fhir /github/home/

#copy publisher to the app ig folder
cp /publisher.jar /apps/icp/publisher.jar

# Navigate to the ig folder
cd /apps/icp

# Run sushi command
sushi -s -o .

#check the location of fhir folder
#ls /github/home/.fhir/packages/
cp /github/home/.fhir /root/
#check root folder
ls /root/.fhir/packages/

# Run publisher command
java -jar publisher.jar -ig .
