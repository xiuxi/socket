
#https://kaywu.xyz/2016/06/19/Shadowsocks-HAProxy/
systemctl stop firewalld
vim /etc/haproxy/haproxy.cfg


global
        ulimit-n  51200

defaults
        log     global
        mode    tcp
        option  dontlognull
        contimeout 1000
        clitimeout 150000
        srvtimeout 150000

frontend ss-in
        bind *:8388
        default_backend ss-out

backend ss-out
        server server1 206.189.182.132:8388 maxconn 20480




haproxy -f /etc/haproxy/haproxy.cfg

