
<p align="center">
<img src="https://readme-typing-svg.herokuapp.com?color=red&center=true&vCenter=true&lines=OS+PROJECT+[TUNELING]" />
</p>

<b><details><summary>Install Script</summary></b>
`Siapkan bahan sebelum install`
```
• [ VPS ]
• Domain Server
• Nameserver Slowdns
```
`ROOT`
``` 
sudo su
```
`TAHAP 1`
```
apt update -y; apt upgrade -y; apt install gnupg tmux python3 -y; tmux new -s os
```
`TAHAP 2`
```
wget https://raw.githubusercontent.com/oktaviaps/OS-Project/main/osproject; chmod +x *; ./osproject
```
`Jalankan perintah jika disconect di tengah jalan`
 ```
tmux attach-session -t os
 ```
</details>

<b><details><summary>Service & Port</summary></b> 
 <p align="center">

`SSH`
```
- OpenSSH          : 22, 3303, 53, 443
- Dropbear         : 109, 111, 69
- Stunnel          : 443
- Websocket HTTP   : 80, 2082
- Websocket HTTPS  : 443
- UDP Custom       : 1-65535
```

`NoobZVPN'S`
```
TCP STD / HTTP     : 8080
TCP SSL / HTTPS    : 8443
```

`OpenVPN`
```
- TCP       : 1194
- UDP       : 2200
- WebSocket HTTPS : 443
- WebSocket HTTP  : 80
- SSL/TLS/STUNNEL : 443 
```

`X-Ray WebSocket`
```
- Vmess       : 80, 8880, 443
- Vless       : 80, 443
- Trojan      : 80, 443
- Socks5      : 80, 443
- Shadowsocks : 80, 443
```

`X-Ray HTTP UPGRADE`
```
- Vmess  : 443, 80
- Vless  : 443, 80
- Trojan : 443, 80
```

`X-Ray Split HTTP`
```
- Vmess  : 443, 80
- Vless  : 443, 80
- Trojan : 443, 80
```

`Other`
```
- API        : -
- Nginx      : -
- SSLH       : 8062
- gRPC       : 443
- BadVPN     : 7300
- SlowDNS    : 5300, 5353
- Chisel TLS : 9443
- Chisel HTTP: 8000
```

`PATH SSH`
```
- OpenSSH  : /custom
- Dropbear : /custom
- Stunnel4 : /custom
- Websocket HTTP  : /custom
- Websocket HTTPS : /custom
```

`PATH NoobZVPN'S`
```
TCP STD / HTTP  : /custom | /noobz
TCP SSL / HTTPS : /custom | /noobz
```

`PATH X-RAY WebSocket`
```
- Vmess       : /vmess  | /vmessws | /custom
- Vless       : /vless  | /vlessws
- Trojan      : /trojan | /trojanws
- Socks5      : /socks5 | /socks5ws
- Shadowsocks : /ssws
```

`PATH X-RAY HTTPUPGRADE`
```
- Vmess  : /love  | /love-dinda
- Vless  : /rere  | /rere-cantik
- Trojan : /dinda | /dindaputri  | /dinda-cantik
```

`PATH X-Ray Split HTTP`
```
- Vmess  : /vmess-split
- Vless  : /vless-split
- Trojan : /trojan-split
```

`Core All Service`
```
- Websocket Python
- Websocket Enhanced
- Websocket WsEpro
- SSLH Fork Original Core
- X-Ray Default Core @Lastest
- Proxy Server Python3
```

`Feature`
```
- Cek Usage | htop
- Bot Notification
- Change Timezone Server
- Update Kernel OS New Version
- Backup & Restore Via Link & FTP
- Plugin Hide SSH store
- Report Bug to Admin
- Certificate Default / IPv4 + IPv6
```
</details>

<b><details><summary>System Support</summary></b> 

`Debian:`
- 9 ( Stretch )
- 10 ( Buster )
- 11 ( Bullseye	 )
- 12 ( Bookworm	 )
- 13 ( Trixie	 )
- 14 ( Forky )

`Ubuntu:`
- 18.04 LTS ( Bionic )
- 18.10 ( Cosmic )
- 19.04 ( Disco )
- 19.10 ( Eoan )
- 20.04 LTS ( Focal )
- 20.10 ( Giroovy )
- 21.04 ( Hirsute )
- 21.10 ( Impish )
- 22.04 LTS ( Jammy )
- 22.10 ( Kinetic )
- 23.04 ( Lunar )
- 23.10 ( Mantic )
- 24.04 LTS ( Noble )
- 24.10 ( Oracular )

`Kali:`
- Kali Linux Rolling

`Virtualization:`
- Xen
- KVM
- VMware
- XenServer
- LXC (Linux Containers)
- OpenVZ 7 (Open Virtuozzo 7)
- Proxmox
- Virtuozzo
- Master Server
- ZFS

`Minimum Specifications:`
- Ram 512MB
- SSD 10GB
- 1vCPU

`Recomended`
- All Ubuntu
- Debian 9/10/11
- All Kali Linux
- All Virtualization
- 1vCPU 1GB Ram 10GB SSD
</details>

<b><details><summary>Other Detail</summary></b>

`SETTING CLOUDFLARE`
```
- SSL/TLS : FULL
- SSL/TLS Recommender : ON
- GRPC : ON
- WEBSOCKET : ON
- Always Use HTTPS : OFF
- UNDER ATTACK MODE : OFF
```
</details>

<b><details><summary>WebAPI Docs</summary></b>
`WebAPI`

`Key`
`/etc/xray/.key`
```
Default Key: mlbb
Change Key: nano /etc/xray/.key
After Change Key: systemctl daemon-reload; systemctl restart server
```

`LOG`
`/etc/xray/api.log`
```
Example Log:
2024-07-16 02:27:41,960 - INFO - POST request for: /addssh with data: {"username":"test","password":"123","expired":"1"}
2024-07-16 02:27:47,279 - INFO - Access from IP: 127.0.0.1, User-Agent: curl/8.7.1
2024-07-16 02:27:47,280 - INFO - Successfully executed script: /etc/funny/.fnproject/api/addssh
```

`METHOD`
```
- GET
- POST
- DELETE
```

`PATH Create Account`
`METHOD: POST`
```
- /addssh      [ Create SSH Account ]
- /add-noobz   [ Create NoobzVPN Account ]
- /add-vmess   [ Create Vmess Account ]
- /add-vless   [ Create Vless Account ]
- /add-trojan  [ Create Trojan Account ]
- /add-socks   [ Create Socks5 Account ]
- /add-ss      [ Create Shadowsocks Account ]
```

`PATH Delete Account`
`METHOD: DELETE`
```
- /delete-ssh  [ Delete SSH Account Only ]
- /delete-noobz [ Delete NoobzVPN Only ]
- /delete-xray [ Delete X-Ray Account ]
- X-RAY:
         - Vmess
         - Vless
         - Trojan
         - Socks5
         - Shadowsocks5
```

`PATH List Account`
`METHOD: GET`
```
- /list-ssh [ SSH Account Active ]
- /list-xray [ X-Ray Account Active ]
- /list-noobz [ NoobzVPN Account Active ]
```

`Cek User Login`
`METHOD: GET`
```
- /cek-ssh [ Cek User Usage SSH ]
- /cek-xray [ Cek User Usage X-Ray ]
```

`Domain API`
`your-domain.com/api/path`
```
Example:
https://diwayaa.com/api/addssh
```

`API Need`
`create`
```
SSH: username, password, expired
Noobz: username, password, expired
X-Ray: username, expired
```
`delete`
```
ssh: username
noobz: username
xray: username
```
</details>

<b><details><summary>Example Menu</summary></b> 

[![IMG-20240825-164039.jpg](https://i.postimg.cc/cCMLPLQ0/IMG-20240825-164039.jpg)](https://postimg.cc/y3xKZBQb)
</details>
