#!/bin/bash

ACR_NAME=""
GIT_USER=""
GIT_PAT=""


az acr build -r $ACR_NAME -t autobuild-demo:{{.Run.ID}} .

az acr task create \
    --registry $ACR_NAME \
    --name task-autobuild-demo \
    --image autobuild-demo:{{.Run.ID}} \
    --context https://github.com/$GIT_USER/container-simpledemo.git \
    --file buildImageAuto/Dockerfile \
    --branch master \
    --git-access-token $GIT_PAT