docker rm -f logstash
docker run -d --name logstash --link elastic:elasticsearch -v $(PWD)/config:/config -v $(PWD)/tmp:/tmp logstash logstash -f /config/logstash.conf
#docker run -it --rm --name logstash -v $(PWD)/config:/config -v $(PWD)/tmp:/tmp logstash logstash -f /config/logstash.conf