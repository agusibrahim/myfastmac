sudo apt-get install nano xorg lxde-core tightvncserver
mkdir -p ~/.vnc/
cp -rf passwd ~/.vnc/1passwd
cp -rf xstartup ~/.vnc/1xstartup
#vncserver -depth 24 -geometry 1280x768
wget "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip" -O temp.zip
unzip temp.zip
rm temp.zip
./ngrok authtoken 2wQnCPcK7LCH9T2pdkK3C_6uPyNuK72myGuVQ2srPNS
./ngrok tcp 5900 > /dev/null &
