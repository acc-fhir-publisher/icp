FROM ubi8:latest

ENV PATH $JAVA_HOME/bin:$PATH

RUN npm install -g fsh-sushi

RUN curl -LJO https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar

COPY test.sh /test.sh
RUN chmod +x /test.sh