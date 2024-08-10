pkill tailscaled
pkill tailscale
chmod 666 /dev/kvm
if [ ! -d ~/vps ]
then
mkdir ~/vps
elif [ ! -f compose.yml ]
then
wget -q https://raw.githubusercontent.com/Assnsster/Test/main/compose.yml -O ~/vps/compose.yml
fi
cd ~/vps
#####
installngrok()
{
cd ~/vps
if [ ! -x ~/vps/ngrok "
then
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz -O ~/vps/ngrok.tgz
fi
tar -xvf ngrok.tgz
chmod +x ngrok
read -p "Ngrok Authtoken Here: " nngrok
./ngrok authtoken $nngrok
clear
echo PORT:
echo """3389) Remote Desktop - RDP [Connect if Windows start ]
5905) VNC - VNC Viewer
8006) NoVNC - Web """
read -p " PORT: " Pos
nohup ./ngrok tcp $Pos &>/dev/null &
echo Start Ngrok...
sleep 6
echo "Your ngrok Address:"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
}
#####
tailscaleins()
{
if ! command -v tailscale
then
curl -fsSL https://tailscale.com/install.sh | sh
else 
echo "tailscale is install"
fi
tailscaled --state=tailscaled.state &
clear
echo
tailscale up
}
case $1 in
   tailscale) tailscaleins;;
   ngrok) installngrok;;
   *)tailscaleins;;
   esac
docker compose up
