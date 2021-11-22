
start: 
        docker run  -d -v /home/forge/prom/prom.yml:/etc/prometheus/prometheus.yml --network=host  --name prom prom/prometheus

start-graf:
        docker run -d  --network=host --name grafana grafana/grafana

runExporter1:
        docker run -d --name m1  -p 9216:9216 bitnami/mongodb-exporter:0.11.2 --mongodb.uri=mongodb://mongodb_exporter:your_unique_password@INSTANCE.1.IP:27017

runExporter2:
        docker run -d --name m2  -p 9215:9216 bitnami/mongodb-exporter:0.11.2 --mongodb.uri=mongodb://mongodb_exporter:your_unique_password_2@INSTANCE.2.IP:27017

