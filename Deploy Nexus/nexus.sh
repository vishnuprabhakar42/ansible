apt update 
apt install openjdk-8-jre-headless
apt install net-tools

cd /opt
wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz
tar -zxvf latest-unix.tar.gz

adduser nexus
chown -R nuxus:nexus nexus-3.28.1-01
chown -R nuxus:nexus sonatype-work

vim nexus-3.28.1-01/bin/nuxus.rc
run_as_user="nexus"

su - nexus
/opt/nexus-3.28.1-01/bin/nexus start
 
ps aux | grep nexus
netstat -lnpt
