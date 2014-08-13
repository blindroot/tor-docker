FROM ubuntu:latest
MAINTAINER mieciu "blindroot@gmail.om"
RUN apt-get install -y tor tor-geoipdb torsocks
