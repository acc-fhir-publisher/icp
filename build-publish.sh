#!/bin/bash
cp -r /root/.fhir /github/home/.fhir

#copy publisher to the app ig folder
cp /publisher.jar /apps/icp/publisher.jar

# Navigate to the ig folder
cd /apps/icp

# Run sushi command
sushi -s -o .

#check the location of fhir folder
#ls /github/home/.fhir/packages/
cp -r /github/home/.fhir /root/.fhir
#check root folder
ls /root/.fhir/packages/

# Run publisher command
java -jar publisher.jar -ig .

#publish the the file into npm repo
#!/bin/bash

# Unzip the .tar.gz file
mkdir /package
pwd
ls
cp /output/package.tgz ./package
cp /.github/package.json ./package
#tar -xzf output/package.r4.tgz



