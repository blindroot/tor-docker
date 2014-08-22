# TOR-docker

This Dockerfile will crete a container with pre-configured TOR node and Privoxy daemon (for safety). 
Simply run:
```
docker build .
```
and (for linux):
```
docker run -i -t <container_id>
```
Alternate Mac OSX version (boot2docker): 
```
docker run -i -t -p 8118:8118 <container_id>
```
Therefore you can point your favourite browsers proxy server to localhost:8118 and start browsing *.onion network :)

Please keep in mind that your browser may store some temporary files and downloads on your laptop, OUTSIDE the container. You should be also aware of JavaScript, which may ruin your anonymity and expose your IP Adress, location, and much more :)
Neither me nor any single project contributor is resposible of what you do in TOR Network

I am working on embedding browser into container so that any data related to TOR network (including cache, tmp, etc.) will be as ephemeral as a container itself.






Right now I'm considering two use cases for this repo:
* Simple, user-friendly and safe tunneling to TOR network just to browse it throught
* Exposing hidden services in a isolated, easy to clean up container
