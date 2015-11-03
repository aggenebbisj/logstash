docker rm -f app
docker run -d --name app -v $(PWD)/config:/config -v $(PWD)/app:/app -v $(PWD)/tmp:/tmp logstash java -jar /app/hello-akka-assembly-1.0.jar
#docker run -it --rm --name app -v $(PWD)/config:/config -v $(PWD)/app:/app -v $(PWD)/tmp:/tmp logstash java -jar /app/hello-akka-assembly-1.0.jar