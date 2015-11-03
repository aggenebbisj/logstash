docker rm -f kibana
docker run --name kibana --link elastic:elasticsearch -d -p 5601:5601 kibana