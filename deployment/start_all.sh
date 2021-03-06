#!/bin/bash
kubectl apply -f rabbitmq.yaml
kubectl apply -f elasticsearch.yaml
kubectl apply -f ps_worker.yaml
kubectl apply -f ps_result_manager.yaml
kubectl apply -f webui.yaml

kubectl get pods
echo "----"
echo ""
echo "Server will start on http://kubernetes-master-node-IP:30001 when all pods are running"
echo "Check state with: 'kubectl get pods'"
echo "----"
