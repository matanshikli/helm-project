#  HELM project


### requriment:

Most of the files are in infra repo, there is 2 options to set the values to the mysql deploy:

1. configmap (kubectl apply -f infra/k8s/configmap.yaml)
2. helm temaplate that will take the values from values.yaml and create config map. 

### Setting Up Dockerhub
1. create repo and acccess key 

### Dockerfile
The Dockerfile is a multi-stage build:
1. **Building Dependencies**: Installs Java packages.
2. **Final Image**: Uses java:8.

### Setting Up Jenkins
- Create secret in Jenkins with the ID DOCKERHUB_CREDENTIALS_ID

### Jenkins Pipeline
- The pipeline triggers manuley
- It builds a Docker image tagged with the Jenkins build number.
- If push to dockerhub.