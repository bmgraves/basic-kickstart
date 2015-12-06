#!/bin/bash

BASECFG="base.cfg"


SYSNAME=$1
SYSIP=$2
SYSNET=$3
SYSGATE=$4

if [[ -n "$SYSNAME" && -n "$SYSIP" && -n "$SYSNET" && -n "$SYSGATE" ]] ; then

cp $BASECFG $SYSNAME.cfg
sed -i -e "s/SYSNAME/$SYSNAME/g" -e "s/SYSIP/$SYSIP/g" -e "s/SYSNET/$SYSNET/g" -e "s/SYSGATE/$SYSGATE/g" $SYSNAME.cfg

else

printf "\n  Usage: $0 <hostname> <ip address> <Netmask> <Gateway>\n"
printf "\n  Output will be <hostname>.cfg\n\n"

fi
