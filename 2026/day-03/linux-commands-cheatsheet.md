
##Process management = monitoring, controlling, and prioritizing running programs.

# Process Management Commands

-ps aux → Show all running processes

-top → Real-time process monitoring

-htop → Interactive process viewer (better UI)

-pidof <process> → Get process ID

-kill <PID> → Stop process gracefully

-kill -9 <PID> → Force stop process

-bg → Run process in background

-fg → Bring process to foreground

-jobs → Show background jobs

-nice / renice → Change process priority

## File system commands help navigate, manage, and control files, folders, and permissions.

#File System Commands

ls → List files & folders

cd → Change directory

pwd → Show current directory

mkdir → Create folder

rm → Delete file/folder

cp → Copy files

mv → Move / rename files

touch → Create file

chmod → Change permissions

chown → Change ownership

df -h → Disk space usage

du -sh → Folder size

## Networking commands help diagnose connectivity, DNS, ports, and API issues.
 
# Networking Troubleshooting Commands

-ip a → Show network interfaces

-ping <host> → Check connectivity

-curl <url> → Test API / HTTP response

-wget <url> → Download file

-netstat -tulnp → Show open ports

-ss -tulnp → Modern netstat alternative

-traceroute <host> → Network path check

-dig <domain> → DNS lookup

-nslookup <domain> → DNS check

-hostname -I → Get server IP

DevOps Quick List
Process: ps, top, kill
File system: ls, cd, chmod, df
Networking: ping, curl, ss, ip a
