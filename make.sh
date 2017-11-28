yum install zip unzip net-tools
curl https://raw.githubusercontent.com/xiuxi/socket/master/socket.zip --output socket.zip
unzip socket.zip
sh shadowsocksr-master/shadowsocks/run.sh
netstat -anp | grep 8388
