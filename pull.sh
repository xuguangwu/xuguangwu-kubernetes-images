images=(pause-amd64:3.0 k8s-dns-kube-dns-amd64:1.14.1 k8s-dns-dnsmasq-nanny-amd64:1.14.1 k8s-dns-sidecar-amd64:1.14.1 kubernetes-dashboard-amd64:v1.6.0 heapster-grafana-amd64:v4.0.2 heapster-amd64:v1.3.0-beta.1 heapster-influxdb-amd64:v1.1.1 elasticsearch:v2.4.1-2 fluentd-elasticsearch:1.22 kibana:v4.6.1-1)

for imageName in ${images[@]} ; do
  docker pull xuguangwu/$imageName
  docker tag xuguangwu/$imageName gcr.io/google_containers/$imageName
  docker rmi xuguangwu/$imageName
done
