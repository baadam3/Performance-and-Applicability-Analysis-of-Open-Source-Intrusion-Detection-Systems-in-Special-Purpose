# Automation 
---
## Cron job
The file named [cron](https://github.com/baadam3/Performance-and-Applicability-Analysis-of-Open-Source-Intrusion-Detection-Systems-in-Special-Purpose/blob/main/Automation/cron) contains a template of a cron job file that is a way of automation on Linux systems. Every part of the file may be changed based on the template below. Cron files could be placed into a number of different directories, in the case of this research it was plaved in **/etc/cron.d/**. To validate the timestamps the following website could be used: [crontab.guru](https://crontab.guru/).
Example format of a cron file:
```
* * * * *  user /path/to/target
| | | | |    |        |
| | | | |    |        |
| | | | |    |        +-- Path to the target file or command that the user will execute
| | | | |    +----------- The user that executes the command
| | | | +---------------- Day of the Week
| | | +------------------ Month
| | +-------------------- Day of the Month
| +---------------------- Hour
+------------------------ Minute
```
---
## IDS scripts
To take measurements the [GNU Time](https://www.gnu.org/software/time/) utility was used. This utility allows to measure certain resources used by another command. In this project, it was used with the following parameters: `/path/to/GNU/time -o /path/to/output/file -a -f '<format_of_output_log>' /monitored/tool` where `-o` creates an output file for GNU time, `-a` allows to append to the file instead of overwriting it and `-f '<format_of_output_log>'` is used to create custom format for the output log. The only "problem" with the GNU tool that it only stops the a measurement process when the measured process finished execution, but an IDS (by default) will not stop when deployed on a live network. To counter this obstacle another automation sends a `SIGNINT` to the IDS that is in use.
### Snort
The bash cript [runSnort.sh](https://github.com/baadam3/Performance-and-Applicability-Analysis-of-Open-Source-Intrusion-Detection-Systems-in-Special-Purpose/blob/main/Automation/IDSs/runSnort.sh) contains the parameters needed to run the measurement process of Snort version 3. The GNU time measures the following process: `/path/to/snort -c /path/to/config -R /path/to/rules -i <NIC_interface> 2>&1 >> /path/to/snort/output/file` where `-c` reads the path to the configuration file `-R` reads the path to the rule or rules that should be used during the monitoring process, `-i` determines the NIC card that should be monitored, `2>&1` redirects the `stderr` to `stdout` (Snort version 3 sends its logs to the `stderr` stream) and `>>` appends the Snort version 3 generated logs to a file.
### Zeek
### Suricata
## Traffic generator
