sudo su -c
case $1 in
 tailscale) ./tailse;;
 ngrok) ./ngroki;;
esac 
docker compose up
