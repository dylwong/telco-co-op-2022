FROM --platform=linux/amd64 telegraf:1.24-alpine

LABEL version="1.0"
LABEL description="Telegraf with snmp libs"

RUN apk add --no-cache curl net-snmp-libs net-snmp net-snmp-tools
#RUN curl https://raw.githubusercontent.com/dylwong/cisco-mibs/main/v1/CISCO-PROCESS-MIB-V1SMI.my -o /usr/share/snmp/mibs/CISCO-PROCESS-MIB-V1SMI.txt

RUN curl https://raw.githubusercontent.com/dylwong/cisco-mibs/main/v2/CISCO-PROCESS-MIB.my -o /usr/share/snmp/mibs/CISCO-PROCESS-MIB.txt
RUN curl https://raw.githubusercontent.com/dylwong/cisco-mibs/main/v2/CISCO-PROCESS-CAPABILITY.my -o /usr/share/snmp/mibs/CISCO-STP-EXTENSIONS-MIB.txt
RUN curl https://raw.githubusercontent.com/dylwong/cisco-mibs/main/v2/CISCO-SNMPv2-CAPABILITY.my -o /usr/share/snmp/mibs/CISCO-STP-EXTENSIONS-MIB.txt
ADD telegraf.template.conf /telegraf.template.conf

ADD run.sh /run.sh
RUN chmod +x /*.sh
EXPOSE 161
CMD ["/run.sh"]
