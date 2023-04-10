#!/bin/bash

sysctl -w net.ipv6.conf.all.disable_ipv6=1

sysctl -w net.ipv6.conf.default.disable_ipv6=1

apt update
### System Information
TANGGAL=$(date '+%Y-%m-%d')
NAMES=$(whoami)
IMP="wget -q -O"    
LOCAL_DATE="/usr/bin/"
MYIP=$(wget -qO- ipinfo.io/ip)
ISP=$(wget -qO- ipinfo.io/org)
CITY=$(curl -s ipinfo.io/city)
TIME=$(date +'%Y-%m-%d %H:%M:%S')
RAMMS=$(free -m | awk 'NR==2 {print $2}')
TIMES="10"
CHATID="-1001956940889"
KEY="6006599143:AAEgstCAioq35JgX97HaW_G3TAkLKzLZS_w"
URL="https://api.telegram.org/bot$KEY/sendMessage"
REPO="https://raw.githubusercontent.com/myridwan/abc/ipuk/"
CDNF="https://raw.githubusercontent.com/myridwan/abc/ipuk"
APT="apt-get -y install "
domain=$(cat /root/domain)
start=$(date +%s)
secs_to_human() {
    echo "Installation time : $((${1} / 3600)) hours $(((${1} / 60) % 60)) minute's $((${1} % 60)) seconds"
}
# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
IZIN=$(wget -qO- ipinfo.io/ip);

rm -f setup.sh
clear
if [ -f "/home/domain" ]; then
echo "Script Already Installed"
exit 0
fi

apt install -y bzip2 gzip coreutils screen curl
apt install python -y
mkdir /var/lib/premium-script;

wget -qc https://raw.githubusercontent.com/dpvpn09/sshv/main/cfo.sh && chmod +x cfo.sh && ./cfo.sh

wget -qc https://raw.githubusercontent.com/dpvpn09/sshv/main/ssh-vpn.sh && chmod +x ssh-vpn.sh && ./ssh-vpn.sh

wget -qc https://raw.githubusercontent.com/dpvpn09/sshv/main/websock.sh && chmod +x websock.sh && ./websock.sh

wget -qc https://raw.githubusercontent.com/dpvpn09/sshv/main/slowdnss/install-sldns.sh && chmod +x install-sldns.sh && ./install-sldns.sh

wget -qc https://raw.githubusercontent.com/dpvpn09/sshv/main/bbr.sh && chmod +x bbr.sh && ./bbr.sh

#wget -qc https://raw.githubusercontent.com/dpvpn09/sshv/main/wireguard/wg.sh && chmod +x wg.sh && ./wg.sh

#wget -qc https://raw.githubusercontent.com/dpvpn09/sshv/main/ipsec/ipsec.sh && chmod +x ipsec.sh && ./ipsec.sh

#install ohp
wget https://raw.githubusercontent.com/kenDevXD/src/main/xolpanel.sh && chmod +x xolpanel.sh && ./xolpanel.sh
clear

rm -f cfo.sh
rm -f ssh-vpn.sh
rm -f websock.sh

cat > /usr/bin/bersih << END
#!/bin/bash
echo 1 > /proc/sys/vm/drop_caches
echo 2 > /proc/sys/vm/drop_caches
echo 3 > /proc/sys/vm/drop_caches
swapoff -a
swapon -a
ban
clear-log
END
chmod +x /usr/bin/bersih

cat <<EOF> /etc/systemd/system/autosett.service

[Unit]

Description=autosetting

Documentation=https://www.jrtunnel.com

[Service]

Type=oneshot

ExecStart=/bin/bash /etc/set.sh

RemainAfterExit=yes

[Install]

WantedBy=multi-user.target

EOF

systemctl daemon-reload

systemctl enable autosett

wget -O /etc/set.sh "https://raw.githubusercontent.com/dpvpn09/sshv/main/set.sh"

chmod +x /etc/set.sh

echo "1.1.1" > /home/ver

wget -O /usr/bin/addssh https://raw.githubusercontent.com/dpvpn09/sshv/main/addssh.sh && chmod +x /usr/bin/addssh
wget -O /usr/bin/member https://raw.githubusercontent.com/dpvpn09/sshv/main/member.sh && chmod +x /usr/bin/member
wget -O /usr/bin/delssh https://raw.githubusercontent.com/dpvpn09/sshv/main/delssh.sh && chmod +x /usr/bin/delssh
wget -O /usr/bin/delexp https://raw.githubusercontent.com/dpvpn09/sshv/main/delexp.sh && chmod +x /usr/bin/delexp
wget -O /usr/bin/cekssh https://raw.githubusercontent.com/dpvpn09/sshv/main/cekssh.sh && chmod +x /usr/bin/cekssh
wget -O /usr/bin/menu https://raw.githubusercontent.com/dpvpn09/sshv/main/menu.sh && chmod +x /usr/bin/menu

clear

figlet -f slant Jrtunnel - Fastnet | lolcat

echo " "

echo " "

echo "=================================-[ AUTOSCRIPT PREMIUM ]-===========================" | tee -a log-install.txt

echo "" | tee -a log-install.txt

echo "   >>> Service Port" | tee -a log-install.txt

echo "   - OpenSSH                 : 22"  | tee -a log-install.txt

echo "   - OpenVPN                 : TCP 1194, UDP 2200, SSL 442"  | tee -a log-install.txt

echo "   - Stunnel4                : 443, 171"  | tee -a log-install.txt

echo "   - Dropbear                : 109, 143"  | tee -a log-install.txt

echo "   - WebSocket Non TLS       : 8880, 80"  | tee -a log-install.txt

echo "   - WebSocket OpenVPN       : 2082"  | tee -a log-install.txt

echo "   - WebSocket SSH TLS       : 443"  | tee -a log-install.txt

echo "   - SSLH Multiplexer        : 443"  | tee -a log-install.txt

echo "   - Squid Proxy             : 3128, 8080 (limit to IP SSH)"  | tee -a log-install.txt

echo "   - Badvpn                  : 7100, 7200, 7300"  | tee -a log-install.txt

echo "   - Nginx                   : 81"  | tee -a log-install.txt

echo "   - Wireguard               : 51820"  | tee -a log-install.txt

echo ""  | tee -a log-install.txt

echo "   >>> Server Information & Other Features"  | tee -a log-install.txt

echo "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt

echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt

echo "   - Dflate                  : [ON]"  | tee -a log-install.txt

echo "   - IPtables                : [ON]"  | tee -a log-install.txt

echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt

echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt

echo "   - Autoreboot On 00.00-12.00 GMT +7" | tee -a log-install.txt

echo "   - Autobackup Data" | tee -a log-install.txt

echo "   - Restore Data" | tee -a log-install.txt

echo "   - Auto Delete Expired Account" | tee -a log-install.txt

echo "   - Full Orders For Various Services" | tee -a log-install.txt

echo "   - White Label" | tee -a log-install.txt

echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt

echo ""  | tee -a log-install.txt

echo "=================================-[ AUTOSCRIPT PREMIUM ]-===========================" | tee -a log-install.txt

echo "- Mod By Jrtunnel" | tee -a log-install.txt

echo ""

sleep 1

  echo -e "Setup Install Sukses!" | lolcat

rm -f setup.sh
rm -f install-sldns.sh
rm -f master.zip
rm -rf badvpn-master
sleep 3
reboot
