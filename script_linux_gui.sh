sudo apt install xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils xrdp
sudo adduser xrdp ssl-cert
sudo systemctl restart xrdp
echo 'root:agus111' | sudo chpasswd
ngrok authtoken 1hdFJmQC6iIak1eSbqx1t7Rrx56_2JLpasDVHybBixWv7Xftm
ngrok tcp 3389
sleep 2
echo "RDP HOST:" $(curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url|cut -c7-)
echo “USERNAME: root”
echo “PASSWORD: agus111”
