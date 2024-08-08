pkill -f tailscaled
pkill -f tailscale
if [ ! -d ~/vps ]
then
mkdir ~/vps
elif [ ! -d ~/vps
wget https://raw.githubusercontent.com/Assnsster/Test/main/compose.yml -O ~/vps/compose.yml
fi
cd ~/vps
tailscaleins()
{
if ! command -v tailscale
then
curl -fsSL https://tailscale.com/install.sh | sh
fi

}
case $1 in
   tailscale) installtailscale

docker compose up
