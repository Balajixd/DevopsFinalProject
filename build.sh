#!/bin/bash
docker build -t devopsfinal .
echo Hyyy
docker login -u balajixd -p dckr_pat_5nBZ1zaRHZxioP8bvV-4j4pIG4M
docker tag devopsfinal balajixd/devopsfinal
docker push surethan37/devopsfinal
kubectl apply -f  deploy.yaml --validate=false
kubectl apply -f svc.yaml --validate=false
