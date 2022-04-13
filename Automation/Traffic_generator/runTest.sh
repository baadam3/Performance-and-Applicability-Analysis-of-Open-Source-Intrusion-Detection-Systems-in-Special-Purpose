#!/bin/bash
/path/to/bittwist -i <NIC_interface> /path/to/file.pcap
ssh <user>@<ip_of_snort> pgrep snort > /path/to/file/containing/pid_snort
SNORTPID=$(cat /path/to/file/containing/pid_snort)
ssh <user>@<ip_of_snort> kill -2 $SNORTPID
ssh <user>@<ip_of_suricata> ps aux | grep -m 3  '/path/to/suricata -c /path/to/config -s /path/to/rules -i <NIC_interface>' | awk '{print $2}' > /path/to/file/containing/pid_suricata
SURICATAPID=$(cat /path/to/file/containing/pid_suricata)
ssh <user>@<ip_of_suricata> kill -2 $SURICATAPID
ssh <user>@<ip_of_zeek> pgrep zeek > /path/to/file/containing/pid_zeek
ZEEKPID=$(cat /path/to/file/containing/pid_zeek)
ssh <user>@<ip_of_zeek> kill -2 $ZEEKPID
