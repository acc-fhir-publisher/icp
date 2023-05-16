#!/bin/bash

# Navigate to the ig folder
cd $IG_FOLDER_PATH

# Run sushi command
sushi -s -o .

# Run publisher command
java -jar publisher.jar -ig .
