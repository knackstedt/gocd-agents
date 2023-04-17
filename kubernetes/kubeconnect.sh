
echo "
apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: ${K8S_CERTIFICATE_AUTHORITY_DATA}
    server: ${K8S_CLUSTER_URL}
  name: target
contexts:
- context:
    cluster: target
    user: target
  name: target
  
current-context: target
kind: Config
preferences: {}
users:
- name: target
  user:
    client-certificate-data: ${K8S_CLIENT_CERTIFICATE_DATA}
    client-key-data: ${K8S_CLIENT_KEY}
" > ~/.kube/config.1

# Finally, check the nodes on the cluster (great litmus test for connectivity)
kubectl get nodes