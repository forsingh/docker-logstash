# docker-logstash
docker run -d -v "/opt/logstash/conf:/opt/logstash/conf" -v "/var/lib/docker:/var/lib/docker" -e "ES_HOST=10.2.0.6:9200" niharvarma1247/logstash:3 logstash -f /opt/logstash/conf/logstash.conf
