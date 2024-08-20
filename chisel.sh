#!/bin/bash

# Memastikan skrip dijalankan sebagai root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

# Menentukan URL download untuk Chisel versi terbaru (pastikan ini adalah versi yang diinginkan)
url="https://raw.githubusercontent.com/nadiavpn/Apex/main/chisel"

# Download file Chisel
echo "Downloading Chisel..."
wget -q -O /usr/bin/chisel "${url}"

# Memberikan izin eksekusi pada file Chisel
chmod +x /usr/bin/chisel

# Membuat file service systemd untuk Chisel di port 9443 (HTTPS)
echo "Creating systemd service for Chisel SSL (port 9443)..."
cat <<EOF > /etc/systemd/system/chisel-ssl.service
[Unit]
Description=Chisel Server SSL By FN Project
After=network.target

[Service]
ExecStart=/usr/bin/chisel server --port 9443 --tls-key /etc/xray/xray.key --tls-cert /etc/xray/xray.crt --socks5
Restart=always
User=nobody
Group=nogroup

[Install]
WantedBy=multi-user.target
EOF

# Membuat file service systemd untuk Chisel di port 8000 (HTTP)
echo "Creating systemd service for Chisel HTTP (port 8000)..."
cat <<EOF > /etc/systemd/system/chisel-http.service
[Unit]
Description=Chisel Server HTTP By FN Project
After=network.target

[Service]
ExecStart=/usr/bin/chisel server --port 8000 --socks5
Restart=always
User=nobody
Group=nogroup

[Install]
WantedBy=multi-user.target
EOF

# Memuat ulang daemon systemd
echo "Reloading systemd daemon..."
systemctl daemon-reload

# Mengaktifkan dan memulai service Chisel SSL (port 9443)
echo "Enabling and starting Chisel SSL service..."
systemctl enable chisel-ssl.service
systemctl start chisel-ssl.service

# Mengaktifkan dan memulai service Chisel HTTP (port 8000)
echo "Enabling and starting Chisel HTTP service..."
systemctl enable chisel-http.service
systemctl start chisel-http.service

#Merestart layanan
systemctl restart chisel-http.service
systemctl restart chisel-ssl.service

# Membersihkan layar
rm -fr chisel.sh
clear