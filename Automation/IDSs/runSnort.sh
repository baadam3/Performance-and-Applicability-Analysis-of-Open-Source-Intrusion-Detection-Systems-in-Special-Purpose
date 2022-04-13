#!/bin/bash
/path/to/GNU/time -o /path/to/output/file -a -f '<format_of_output_log>' /path/to/snort -c /path/to/config -R /path/to/rules -i <NIC_interface> 2>&1 >> /path/to/snort/output/file
