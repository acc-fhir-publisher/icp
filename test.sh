#!/bin/bash

# Set PATH
export PATH=$JAVA_HOME/bin:$PATH

# Install fsh-sushi
npm install -g fsh-sushi

# Download the FHIR IG Publisher
curl -LJO https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar


# Navigate to the ig folder
cd $HOME/icp/

# Run sushi command
sushi -s -o .

# Run publisher command
java -jar publisher.jar -ig .
