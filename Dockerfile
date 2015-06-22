# Download and install logstash, and insert our custom modules

FROM debian:jessie
MAINTAINER Push Technology "cloudops@pushtechnology.com"

# Install Deps and Download logstash
RUN apt-get update && apt-get install -y wget openjdk-7-jre m4
RUN wget https://download.elastic.co/logstash/logstash/logstash-1.4.2.tar.gz -O /tmp/logstash.tar.gz 2> /dev/null

# Unzip logstash and put in place
RUN tar zxf /tmp/logstash.tar.gz -C /opt && mv /opt/logstash-1.4.2 /opt/logstash && rm -rf /tmp/logstash.tar.gz

