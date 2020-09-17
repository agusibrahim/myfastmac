# disable spotlight indexing
sudo mdutil -i off -a
wget "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip" -O temp.zip
unzip temp.zip
rm temp.zip
./ngrok authtoken 2wQnCPcK7LCH9T2pdkK3C_6uPyNuK72myGuVQ2srPNS
