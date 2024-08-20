#!/bin/bash
curl https://rclone.org/install.sh | bash
printf "q\n" | rclone config
wget -O /root/.config/rclone/rclone.conf "https://raw.githubusercontent.com/praiman99/AutoScriptVPN-AIO/Beginner/rclone.conf"
git clone  https://github.com/magnific0/wondershaper.git
cd wondershaper
make install
rm -rf wondershaper
echo > /home/limit
apt install msmtp-mta ca-certificates bsd-mailx -y
cat<<EOF>>/etc/msmtprc
defaults
tls on
tls_starttls on
tls_trust_file /etc/ssl/certs/ca-certificates.crt
account default
host smtp.gmail.com
port 587
auth on
user revolution.become.true@gmail.com
from revolution.become.true@gmail.com
password rmjydsqnwhehcanj  
logfile ~/.msmtp.log
EOF
chown -R www-data:www-data /etc/msmtprc
cd /usr/bin
rm -f /root/set-br.sh