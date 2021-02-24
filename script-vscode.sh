brew install ngrok --cask
brew install code-server
code-server --auth none>/dev/null &
ngrok authtoken 3FqC8NZYFm3FCTnq31YP_4PVTJD76Ugzejfn5Eq49A
ngrok http 8080 >/dev/null &
sleep 10
curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url
