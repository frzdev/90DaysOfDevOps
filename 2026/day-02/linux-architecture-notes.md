
## Linux Architecture / Linux Layered Design
Hardware → Physical components (CPU, RAM, disk, devices)

Kernel → Core of Linux that manages hardware, memory, processes, and devices

Shell → Interface that allows users to interact with the system (command line)

Applications → User programs like browsers, editors, servers running on top of the system

Flow: User → Applications → Shell → Kernel → Hardware


## Processes in Linux
A process is simply a program in execution that has a unique PID and is managed by the kernel for creation, scheduling, and termination.

-Process Lifecycle

--New

--Ready

--Running

--Waiting

--Terminated
-Useful Commands
--ps
--top
--htop
--kill
--pstree
Example:

Start program → process created

Close app → process terminated

## Systemd 
systemd is the modern Linux init system that manages the boot process, controls system services, handles logging, and can automatically restart services when needed.

#What systemd does

-Boot process management

-Service management

-Logging (journal)

-Dependency handling

-Parallel startup

#Key Concepts

-Unit → configuration file (service, socket, mount)

-Service → background program (daemon)

-Target → group of units (like runlevels)

## Important Commands
-systemctl start nginx
-systemctl stop nginx
-systemctl restart nginx
-systemctl status nginx
-systemctl enable nginx

#Example:

Web server runs as service

systemd starts it automatically

## 5 Commands used daily
-ps or top : Provides process ID, memory usage, CPU time and command name which is crucial for monitoring system performance and troubleshooting.
-chmod : Changing permission of files.
-ssh : Provides secure shell connecting to remote server.
-systemctl : Managing system services (starting, stopping).
-df /du : df is used to monitor disk space usage and du is used to estimate size of a specific directory.a
