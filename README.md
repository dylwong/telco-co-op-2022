
Kubernetes Manifest for Telegraf SNMP Exporter
This Kubernetes manifest file defines a namespace, deployment, and service for running a Telegraf SNMP exporter.

Namespace
The namespace newton-ciscos is created with the Namespace resource. It has a label kubernetes.io/metadata.name with value newton-ciscos.

Deployment
The Deployment resource named telegraf-snmp is created within the newton-ciscos namespace. It specifies that a single replica of the container image quay.io/dywong/telegraf-cisco:latest should be run. The container exposes port 9090 and mounts three MIB files as well as a configuration file from a ConfigMap named telegraf-config.

Service
The Service resource named telegraf-exporter is also created within the newton-ciscos namespace. It exposes port 9090 on the deployment's pods and sets the type to ClusterIP, meaning that it is only accessible within the cluster and not externally. The service is also set to use Cluster internal traffic policy, which means that it will only load balance traffic between healthy pods in the same cluster.

ConfigMap
The ConfigMap telegraf-config is defined with the ConfigMap resource. It contains the configuration file telegraf.conf for the Telegraf SNMP exporter.

The ConfigMap defines global tags to be applied to all metrics collected, as well as configuration for the Telegraf agent and input and output plugins.

The inputs.snmp plugin is configured to collect metrics from Cisco switches with the given IP addresses and community string (authentication). It also specifies a number of fields to collect, including hostname, CPU utilization, memory usage, and various status values from FRU (Field Replaceable Unit) tables.

The outputs.file plugin is configured to write metrics to the stdout output and a file at /tmp/metrics.out. The outputs.prometheus_client plugin is also configured, exposing the collected metrics on port 9090 via HTTP on the /metrics path.
