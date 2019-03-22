# scala-finch-template
quick and clean template for scala finch rest-api project

## Prerequisites

* JDK8 installed
* scala installed
* sbt installed

### Running the image
```
./build.sh
```
* will compile the project and create a .zip artifact using sbt native packager

```
docker-compose up -d
```
* runs the container

### Try health check endpoint
```
curl -v http://localhost:19090/
```
```
docker-compose down
```
* stops and removes the container

```
docker logs -f finch-backend
```
* container logs

### Developing

Test runner:
```
sbt test
```
Compile:
```
sbt compile
```
create .zip artifact using sbt native packager:
```
sbt universal:packageBin
```







