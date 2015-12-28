#!/bin/bash

# COPYRIGHT (C) 2015, Brandon M. Graves, http://metashell.net
#
# This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 2 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
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
