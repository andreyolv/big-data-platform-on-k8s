echo 'Enabling apt update and apt install...'
cd /etc/apt
sed -i 's/http /https /g' sources.list
echo 'Successfully enabled!'