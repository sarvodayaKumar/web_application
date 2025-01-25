# Web Application Deployment in Kubernetes

## Steps to Deploy

1. Build and Push Docker Image:
   docker build -t sarvoday97/web-app:latest ./app
   docker push sarvoday97/web-app:latest
   ```

2. Provision Cloud Infrastructure:
   cd terraform
   terraform init
   terraform apply
   
3. Deploy Kubernetes Resources:
   kubectl apply -f k8s/deployment.yaml
   kubectl apply -f k8s/service.yaml

4. Setup Monitoring:
   kubectl apply -f k8s/prometheus-config.yaml
   helm install prometheus prometheus-community/prometheus -n monitoring --create-namespace

5. Access the Application:
   - Note the LoadBalancer IP from `kubectl get svc web-app-service`.

6. Access Prometheus:
   - Note the Prometheus Service IP and Port.