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
java -jar publisher.jar -ig . -no-sushi

#publish the the file into npm repo
#!/bin/bash

# Copy the generated zipped file to the package folder
mkdir package
cp output/package.r4.tgz package
#tar -xzf output/package.r4.tgz

