# Telegraf SNMP -> Prometheus + Grafana Dashboards

- iDRAC Dell MIBs/OIDs list (current):

- CISCO SNMPv1 and v2 MIBs/OIDs list:


Grafana Dashboard (iDRAC Metrics) + Prometheus Data Source (Telegraf Custom)

Grafana Dashboard (CO2 Metrics) + Prometheus Data Source (William's Node Exporter + Telegraf Custom)

Grafana Dashboard (Cisco 9300-FX3 Series Metrics) + Prometheus Data Source (Telegraf Custom)

Prerequisites:

podman
oc-cli
python 3.7 (flask, ansible, jinja2, etc)
telegraf 1.24+
grafana
openshift monitoring
