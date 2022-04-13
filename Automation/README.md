# Automation
## Cron job
The file named cron contains a template of a cron job file that is a way of automation on Linux systems. Every part of the file may be changed based on the template below. Cron files could be placed into a number of different directories, in the case of this research it was plaved in **/etc/cron.d/**.
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
To validate the timestamps the following website could be used: [crontab.guru](https://crontab.guru/).
---
