# ssh

sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt --reinstall --fix-missing install -y bzip2 gzip coreutils wget screen && wget --no-check-certificate -O setup.sh 'https://raw.githubusercontent.com/dpvpn09/sshv/main/setup.sh' && chmod +x setup.sh && screen -S setup ./setup.sh && rm -rf ./setup.sh