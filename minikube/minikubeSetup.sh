#!/bin/sh
kubectl create -f ./kubMongoVolume.yaml
kubectl create -f ./kubMongoVolumeClaim.yaml
kubectl create -f ./kubMongo.yaml
kubectl create -f ./kubMongoService.yaml
kubectl create -f ./kubApp.yaml
kubectl create -f ./kubAppService.yaml
kubectl create service loadbalancer angularandspring  --tcp=8080:8080
kubectl get services
