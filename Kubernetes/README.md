## GCP

### Cloud Shell

#### minikube

Start minikube
```shell script
minikube start
```

Stop minikube
```shell script
minikube stop
```

#### Scenario 1
```shell script
git clone https://github.com/GoogleCloudPlatform/kubernetes-engine-samples.git

cd ./kubernetes-engine-samples/quickstart/nodejs

nano index.js

<edit code>

PROJECT_ID=??? # on the top of terminall "Your Cloud Platform project in this session is set to ???"

docker build -t gcr.io/$PROJECT_ID/quickstart:v1 . # build

docker image ls # info about images

docker run -d -p 8080:8080 gcr.io/$PROJECT_ID/quickstart:v1

docker container ls # info about containers

<check in browser>

docker container stop <CONTAINER_ID>

docker push gcr.io/$PROJECT_ID/quickstart:v1 # export to gcr.io

<GCP -> Container Registry>

# create cluster "gcloud container clusters create <name> --num-nodes <quantity of nodes> --machine-type <machine type> --zone <zone>"
# Open "Kubernetes Engine" cart
gcloud container clusters create quickstart1 --num-nodes 1 --machine-type n1-standard-1 --zone europe-west3-c

<GCP -> Kubernetes Engine>

# check nodes
kubectl get nodes

# create deployment "kubectl create deployment <name> --image=<image name>"
kubectl create deployment quickstart1 --image=gcr.io/$PROJECT_ID/quickstart:v1

# check deployment 
kubectl get deployment

# check pod
kubectl get pod -o wide

# expose
kubectl expose deployment quickstart1 --type="LoadBalancer" --port=8080 --target-port=8080 

# check service
kubectl get service

```

Code modifications:
```js
var os = require("os");
var hostname = os.hostname();
var datetime = new Date().toISOString().replace(/T/, ' ').replace(/\..+/, '');

// [...]

res.write("Hello World from XYZ XYZ\n");
res.write("Hostname: " + hostname + "\n");
res.write("Date: " + datetime + "\n");
res.end();
```
