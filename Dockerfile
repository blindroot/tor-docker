FROM ubuntu:latest
MAINTAINER mieciu "blindroot@gmail.om"

# Install TOR package dependencies
RUN \
  echo "deb     http://deb.torproject.org/torproject.org trusty main" >> /etc/apt/sources.list && \
  gpg --keyserver keys.gnupg.net --recv 886DDD89 && \
  gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add - && \
  apt-get update && \
  apt-get install -y tor tor-geoipdb torsocks privoxy

# Configure and run privoxy
RUN \
  echo "forward-socks5   /               127.0.0.1:9050 ." > /etc/privoxy/config && \
  /etc/init.d/privoxy start

# Configure and startup TOR
RUN \
  mkdir /var/lib/tor/hidden_service && \
  chown -R debian-tor:debian-tor /var/lib/tor/hidden_service && \
  /etc/init.d/tor start
