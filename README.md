# Basic-kickstart
A basic Kickstart file and script for kickstart deployment, installs salt-minion as part of the configuration process.

NOTE: The salt-minion configuration is done as an rc.local script that should be removed after the first boot.
If left intact the script will double check that the EPEL repository is configured, and salt-minion is installed
at every boot, which can slow boot times.
