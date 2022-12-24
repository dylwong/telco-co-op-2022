
# Deploying Telegraf, Grafana, and Prometheus on OpenShift

This guide explains how to deploy [Telegraf](https://www.influxdata.com/time-series-platform/telegraf/), [Grafana](https://grafana.com/), and [Prometheus](https://prometheus.io/) on [OpenShift](https://www.openshift.com/) for monitoring CPU and memory metrics from Dell IDRAC servers via [SNMP](https://en.wikipedia.org/wiki/Simple_Network_Management_Protocol).

## Prerequisites

- A running OpenShift cluster
- Access to the OpenShift command-line interface (CLI)
- [Dell IDRAC servers](https://www.dell.com/support/manuals/us/en/19/idrac-r230-r330-r530-r630-r730-r730xd-r930-xd-with-lc-v2.5/idrac-r230-r330-r530-r630-r730-r730xd-r930-xd-with-lc-v2.5/idrac-overview/about-idrac) with SNMP enabled
- [Telegraf](https://www.influxdata.com/time-series-platform/telegraf/) installed on a machine that has access to the Dell IDRAC servers

## Deploying Telegraf

1. Create a new OpenShift project for deploying Telegraf:

```bash
oc new-project telegraf
