FROM accnewzealand/ubi8:latest
ENV PATH $JAVA_HOME/bin:$PATH
RUN npm install -g fsh-sushi
COPY publisher.jar /publisher.jar
COPY test.sh /test.sh
RUN chmod +x /test.sh
