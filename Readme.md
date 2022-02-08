# Argocd

Dockerfile :
```
FROM        node
RUN         mkdir /app
WORKDIR     /app
COPY        . .
RUN         npm install
RUN         npm install cors --save
CMD         ["npm", "start"]
```
install docker 

apt update && apt install docker.io 

sudo chmod 777 /var/run/docker.sock

docker login

docker build -t sample-node .

docker images

docker tag 905444b93b8c amruthac/sample-node

docker push amruthac/sample-node

docker rmi sample-node

docker run -d -p 5000:5000 905444b93b8c

https://localhost:5000
