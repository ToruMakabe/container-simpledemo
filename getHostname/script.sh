#/bin/bash

$ go build -o main main.go
$ ./main

$ docker build -t torumakabe/simpledemo:v1.0.0 .
$ docker images
$ docker run -d -p 8081:8080 torumakabe/simpledemo:v1.0.0
$ docker push torumakabe/simpledemo:v1.0.0

$ az container create -g aci-wus-rg -f ./simpledemoaci.yaml

$ kubectl get pod -o custom-columns=Pod:metadata.name,Node:spec.nodeName