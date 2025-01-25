cd /
git clone https://github.com/novnc/noVNC.git
sudo chmod +755 /noVNC/utils/novnc_proxy
cd /noVNC/utils
./novnc_proxy
sudo iptables -I INPUT -p tcp --dport 6080 -j ACCEPT
sudo iptables-save