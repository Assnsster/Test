pkill -f tailscaled
pkill -f tailscale
chmod 666 /dev/kvm
if [ ! -d ~/vps ]
then
mkdir ~/vps
elif [ ! -d ~/vps
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
   tailscale) installtailscale
   ngrok) installngrok
docker compose up
