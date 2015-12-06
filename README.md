# Basic-kickstart
A basic Kickstart file and script for kickstart deployment, installs salt-minion as part of the configuration process.

NOTE: The salt-minion configuration is done as an rc.local script that should be removed after the first boot.
If left intact the script will double check that the EPEL repository is configured, and salt-minion is installed
at every boot, which can slow boot times.

# Partitioning
The kickstart File will partition your system as follows:
/boot          : Size: 200 MB
/home          : Minimum: 5 GB, Maximum: 25 GB
/tmp           : Minimum: 1 GB, Maximum: 40 GB
/var           : Minimum: 4 GB, Maximum: 10 GB
/var/log       : Minimum 1 GB, Maximum 2 GB
/var/log/audit : Minimum 200 MB, Maximum 1 GB
/              : Minimum 17 GB, Maximum: All remaining space


#Using gen-kickstart.sh:

./gen-kickstart.sh <hostname> <hostip> <host netmask> <gateway>

gen-kickstart will make a copy of base.cfg named <hostname>.cfg and substitute in the values provided so that the .cfg file can be used to properly configure your kickstarted server, a new config file can then quickly be generated for each required new server.
