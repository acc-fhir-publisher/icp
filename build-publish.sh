#!/bin/bash
ls /root

#copy publisher to the app ig folder
cp /publisher.jar /apps/icp/publisher.jar

# Navigate to the ig folder
cd /apps/icp

# Run sushi command
sushi -s -o .

#check the location of fhir folder
find / -name ".fhir" 2>/dev/null

# Run publisher command
java -jar publisher.jar -ig .
