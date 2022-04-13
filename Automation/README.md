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
To take measurements the [GNU Time](https://www.gnu.org/software/time/) utility was used. This utility allows to measure certain resources used by another command. In this project, it was used with the following parameters: `/path/to/GNU/time -o /path/to/output/file -a -f '<format_of_output_log>' /monitored/tool` where `-o` creates an output file for GNU time, `-a` allows to append to the file instead of overwriting it and `-f '<format_of_output_log>'` is used to create custom format for the output log.
