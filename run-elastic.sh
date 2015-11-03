# flag to address loopback binding issue
# https://github.com/docker-library/elasticsearch/issues/50
docker run --name elastic -d -p 9200:9200 -p 9300:9300 elasticsearch elasticsearch --network.host _non_loopback_
