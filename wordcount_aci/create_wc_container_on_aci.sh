#!/bin/bash

RG="demo-rg"

az container create \
    -g $RG \
    -n ${RG}-wordcount \
    --image microsoft/aci-wordcount:latest \
    --restart-policy OnFailure

az container show \
    -g $RG \
    -n ${RG}-wordcount \
    --query containers[0].instanceView.currentState.state

az container logs \
    -g $RG \
    -n ${RG}-wordcount