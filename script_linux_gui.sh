sudo apt-get install nano xorg lxde-core tightvncserver
mkdir -p ~/.vnc/
cp -rf passwd ~/.vnc/passwd
cp -rf xstartup ~/.vnc/xstartup
chmod 600 ~/.vnc/passwd
chmod 755 ~/.vnc/xstartup
rm passwd
rm xstartup
vncserver -depth 24 -geometry 1280x768
wget "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip" -O temp.zip
unzip temp.zip
rm temp.zip
./ngrok authtoken 1T750atJi3xccndeUqJ4ewiS62o_2s6f8GUccL1qDUXTGSftN
./ngrok tcp 5900 > /dev/null &
sleep 3
curl http://127.0.0.1:4040/api/tunnels>ngrok.json
cat ngrok.json
