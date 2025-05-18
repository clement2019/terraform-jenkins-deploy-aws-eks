 Update eks kubeconfig once k8s cluster is installed successfully
aws eks update-kubeconfig --name eks-cluster-209

kubectl config current-context
kubectl config svc
kubectl get events
kubectl get pods
kubectl log <podName>
kubectl logs --since=6h <pod_name> #Print the logs for the last 6 hours for a pod
kubectl logs --tail=50 <pod_name>
kubectl logs -f <pod_name>
kubectl logs -c <container_name> <pod_name>
kubectl logs --previous <pod_name> #View the logs for a previously failed pod
kubectl apply -f service.yaml
kubectl get svc ngnix

# Delete K8s Cluster
kubectl delete svc <serviceName>
kubectl delete -f <FileName>
eksctl delete cluster --name <ClusterName> --<regionName>