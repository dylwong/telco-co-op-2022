#!/bin/sh

CONFIG_TEMPLATE="/telegraf.template.conf"
CONFIG_FILE="/etc/telegraf/telegraf.conf"



rm $CONFIG_FILE
ln -s $CONFIG_TEMPLATE $CONFIG_FILE

echo "=> Starting Telegraf ..."

exec telegraf -config /etc/telegraf/telegraf.conf
