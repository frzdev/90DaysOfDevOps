
 # RUNBOOK for ssh service

### This runbook provides quick troubleshooting steps if the SSH service goes down.

## Environment basics

* Command : `uname -a`

  Output : `Linux DESKTOP-QQDO1T7 5.15.167.4-microsoft-standard-WSL2 #1 SMP Tue Nov 5 00:21:55 UTC 2024 x86_64 x86_64 x86_64 GNU/Linux`

  Observation : Kernel version and architecture confirmed.

* Command : `cat /etc/os-release`

  Output : `PRETTY_NAME="Ubuntu 24.04.3 LTS"`
           `NAME="Ubuntu"`
           `VERSION_ID="24.04"`
           `VERSION="24.04.3 LTS (Noble Numbat)"`
          
  Observation : Confirms distribution and release version.

## Filesystem sanity

* Command : `mkdir /tmp/runbook-demo`
  
  Observation : Directory created successfully.

* Command : `cp /etc/hosts /tmp/runbook-demo/hosts-copy && ls -l /tmp/runbook-demo`
  
  Observation : Copied the files from /etc/hosts. Filesystem is writable.

## CPU / Memory 

* Command : `ps -o pid,pcpu,pmem,comm -p $(pidof sshd)`

  Output : `PID %CPU %MEM COMMAND`
            `312  0.0  0.1 bash`

  Observation : Process running and CPU & Memory usage is negligible.

* Command : `free -h`

  Output : `Total: 3.8G, Used: 518M, free:3.3G Available: 3.3G`
  
  Observation : Sufficient memory available.
  
## Disk / IO 

* Command : `df -h`

  Output : `/dev/sdc       1007G  1.9G  954G   1% / `
  
  Observation : Root partition more than 90% available.

* Command : `iostat`
  
  Observation : CPU idle= 84.01% -> which is healthy.
                iowait= 3.26% -> small percentage of CPU time waiting for I/O.
                system= 2.92% -> low.
                user= 9.76% -? about 10% CPU time is spent on user processes.
  
## Network

* Command : `sudo ss -tulpn | grep  sshd`

  Output : `tcp   LISTEN 0      4096         0.0.0.0:22         0.0.0.0:*    users:(("sshd",pid=1405,fd=3),`
            `("systemd",pid=1,fd=176))`
  
  Observation : ssh is listening on port 22.

* Command : `nc -zv localhost 22`

  Output : `Connection to localhost (127.0.0.1) 22 port [tcp/ssh] succeeded!`
  
  Observation : Connection confirmed.
 
## Logs

* Command : `journalctl -u ssh -n 50`
  
  Observation : Last 50 lines shows normal authentication attempts no errors or warnings.

* Command :`tail -n 50 /var/log/auth.log `
  
  Observation : Recent login attempts record. No suspicious activity detected.
  

## Quick review
- ssh service running normally with low CPU usage
- Disk and logs size is healthy
- Network port 22 is open and serving connections.
- No errors in logs.

## If this worsens
- Check logs again 
- Check CPU usage/Disk usage
- Restart service
- Check if port is used by other service


