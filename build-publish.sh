#!/bin/bash

find / -name ".fhir" 2>/dev/null

find / -name "publisher.jar" 2>/dev/null

#copy publisher to the app ig folder
cp publisher.jar /apps/icp

# Navigate to the ig folder
cd /apps/icp

# Run sushi command
sushi -s -o .

# Run publisher command
java -jar publisher.jar -ig .
