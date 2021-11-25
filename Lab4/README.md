# Lab 4 - Markus Gamperl
## Hilfreiche/Verwendete Links
1. https://docs.microsoft.com/en-us/azure/aks/concepts-clusters-workloads
2. https://docs.microsoft.com/en-us/azure/aks/kubernetes-walkthrough
3. https://kubernetes.io/docs/home/
4. https://kubernetes.io/docs/tutorials/stateful-application/mysql-wordpress-persistent-volume/
## Vorgehensweise
1. Login mit "az login"
2. Erstellen einer ResourceGroup mit "az group create --name lab4-gamperl --location eastus"
3. Registrieren von Microsoft.OperationsManagement & Microsoft.OperationalInsights mit "az provider register --namespace Microsoft.OperationalInsights" & "az provider register --namespace Microsoft.OperationsManagement"
4. AKS Cluster erstellen mit "az aks create --resource-group lab4-gamperl --name lab4cluster --node-count 1 --enable-addons monitoring --generate-ssh-keys"
5. kubectl installieren mit "az aks install-cli"
6. Verbindung mit Cluster herstellen mit "az aks get-credentials --resource-group lab4-gamperl --name lab4cluster"
7. mysql-deployment.yaml und wordpress.deployment.yaml erstellen
8. MySQL Passwort setzen mit "kubectl create secret generic mysql-pass --from-literal=password=1234"
9. Deploying MySQL und Wordpress mit folgenden zwei Commands: "kubectl apply -f mysql-deployment.yaml" & "kubectl apply -f wordpress-deployment.yaml"
10. Mit "kubectl get service wordpress --watch" können wir das Service, also hier "wordpress" monitoren, und erhalten - wenn fertiggestellt - die Externe-IP: 20.121.229.208. Wordpress ist nun unter dieser Adresse erreichbar.
