#! /usr/bin/env bash

NEURON_VERSION=$1

docker build -t java-8-datadog:$NEURON_VERSION .
docker tag java-8-datadog:$NEURON_VERSION gongmingqm10/java-8-datadog:$NEURON_VERSION
docker tag java-8-datadog:$NEURON_VERSION gongmingqm10/java-8-datadog:latest
docker push gongmingqm10/java-8-datadog:$NEURON_VERSION
docker push gongmingqm10/java-8-datadog:latest
docker rmi java-8-datadog:$NEURON_VERSION gongmingqm10/java-8-datadog:$NEURON_VERSION gongmingqm10/java-8-datadog:latest
