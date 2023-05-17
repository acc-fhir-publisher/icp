#!/bin/bash
ls /root/fhir/packages/
ls /

#copy publisher to the app ig folder
cp /publisher.jar /apps/icp/publisher.jar

# Navigate to the ig folder
cd /apps/icp

# Run sushi command
sushi -s -o .

# Run publisher command
java -jar publisher.jar -ig .
