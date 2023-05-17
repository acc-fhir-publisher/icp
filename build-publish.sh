#!/bin/bash

#copy publisher to the app ig folder
cp /publisher.jar /apps/icp/publisher.jar

# Navigate to the ig folder
cd /apps/icp

# Run sushi command
sushi -s -o /root

#check the location of fhir folder
#ls /github/home/.fhir/packages/

#check root folder
ls /root/.fhir/packages/

# Run publisher command
java -jar publisher.jar -ig .
