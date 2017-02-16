#!/bin/bash

for fl in *; do
  if [ -d $fl ]; then
    image="glittershark/$fl"
    docker build -t $image $fl
    docker push $image
  fi
done
