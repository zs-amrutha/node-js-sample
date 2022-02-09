# Deploy NodeJS Application using Argocd
Docker Commands - https://code-maven.com/slides/docker/run-container-as-a-daemon

https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes


Clone NodeJs application Repo :
```
git clone https://github.com/zs-amrutha/node-js-sample.git

cd node-js-sample
```
Install docker :

apt update && apt install docker.io 

sudo chmod 777 /var/run/docker.sock

Create Dockerfile for NodeJS App :

```
FROM        node
RUN         mkdir /app
WORKDIR     /app
COPY        . .
RUN         npm install
RUN         npm install cors --save
CMD         ["npm", "start"]
```
Build and Run docker Images:
```bash
docker login

docker build -t sample-node .

docker images

docker tag 905444b93b8c amruthac/sample-node

docker push amruthac/sample-node

docker rmi sample-node

docker run -d -p 5000:5000 905444b93b8c
```
Lets Browse NodeJS App https://localhost:5000 
