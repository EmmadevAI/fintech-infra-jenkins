#!/bin/bash
response="$(aws eks list-clusters --region us-west-2 --output text | grep -i cloudsroot-cluster 2>&1)" 
if [[ $? -eq 0 ]]; then
    echo "Success: cloudsroot-cluster exist"
    aws eks --region us-west-2 update-kubeconfig --name cloudsroot-cluster && export KUBE_CONFIG_PATH=~/.kube/config

else
    echo "Error: cloudsroot-cluster does not exist"
fi