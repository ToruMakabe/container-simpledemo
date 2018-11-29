#!/bin/bash

RG="demo-rg"

az container create \
    -g $RG \
    -n ${RG}-nginx \
    --image nginx \
    --ip-address public