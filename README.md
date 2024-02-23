# DevOps-Assignment-ST-Engineering
NGINX Helm Chart
This Helm chart enables you to deploy an NGINX server on Kubernetes with support for enabling HTTPS protocol through values.yaml. Additionally, it exposes the NGINX landing page on a NodePort.

Prerequisites
Kubernetes cluster set up.
Helm installed and initialized.
Installation
Clone this repository:

bash
Copy code
git clone <repository_url>
Navigate to the directory containing the Helm chart:

bash
Copy code
cd nginx-helm-chart
Customize the NGINX deployment by modifying the values.yaml file according to your requirements.

Generate a self-signed SSL certificate using OpenSSL:

bash
Copy code
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout templates/tls.key -out templates/tls.crt
Install the Helm chart:

bash
Copy code
helm install nginx ./nginx-helm-chart
Configuration
The NGINX Helm chart provides the following configurable options through values.yaml:

nginx.image.repository: NGINX image repository.
nginx.image.tag: NGINX image tag.
nginx.image.pullPolicy: NGINX image pull policy.
nginx.service.type: Service type for exposing NGINX.
nginx.service.port: Service port.
nginx.service.targetPort: Target port for NGINX service.
httpsEnabled: Enable or disable HTTPS protocol.
You can customize these values in the values.yaml file before installing the Helm chart.

Usage
After installation, you can access the NGINX landing page via NodePort. If HTTPS is enabled, you can access the landing page securely.

To uninstall the NGINX deployment, use the following command:

bash
Copy code
helm uninstall nginx
