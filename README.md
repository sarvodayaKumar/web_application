# Web Application Deployment in Kubernetes

## Steps to Deploy

1. Build and Push Docker Image:
   ```bash
   docker build -t <dockerhub-username>/web-app:latest ./app
   docker push <dockerhub-username>/web-app:latest
   ```

2. Provision Cloud Infrastructure:
   ```bash
   cd terraform
   terraform init
   terraform apply
   ```

3. Deploy Kubernetes Resources:
   ```bash
   kubectl apply -f k8s/deployment.yaml
   kubectl apply -f k8s/service.yaml
   ```

4. Setup Monitoring:
   ```bash
   kubectl apply -f k8s/prometheus-config.yaml
   helm install prometheus prometheus-community/prometheus -n monitoring --create-namespace
   ```

5. Access the Application:
   - Note the LoadBalancer IP from `kubectl get svc web-app-service`.

6. Access Prometheus:
   - Note the Prometheus Service IP and Port.