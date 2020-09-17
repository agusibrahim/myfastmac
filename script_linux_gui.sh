sudo apt-get install nano xorg lxde-core tightvncserver
mkdir -p ~/.vnc/
cp -rf passwd ~/.vnc/passwd
cp -rf xstartup ~/.vnc/xstartup
chmod 600 ~/.vnc/passwd
chmod 755 ~/.vnc/xstartup
vncserver -depth 24 -geometry 1280x768
wget "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip" -O temp.zip
unzip temp.zip
rm temp.zip
