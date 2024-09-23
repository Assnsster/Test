Repo="https://raw.githubusercontent.com/Assnsster/Test/refs/heads/main/test-repository1"
workdir="$PREFIX/etc/pro11.main"
if [ ! -d $workdir ] ; then
echo "Workdir $workdir not found"
read -p "Create Workdir Now? [Y/N]: " YaN
case $YaN in Y|y)mkdir $workdir ;; N|n)echo cancel;exit;;esac
mkdir $workdir
fi
rm -f $workdir/las
curl "$Repo" &>"$workdir/las" 2>/dev/null
if [ -z $1 ] ;then read -p " RepoRun : " value ; else value=$1 ;fi
bash $workdir/las $value
