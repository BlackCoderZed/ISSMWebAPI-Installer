sudo apt-get update

sudo apt-get install apt-transport-https
sudo apt install dotnet-sdk-7.0
sudo apt install dotnet-runtime-7.0
sudo apt-get install aspnetcore-runtime-7.0

sudo apt-get install apache2

sudo a2enmod proxy proxy_http proxy_html proxy_wstunnel

sudo a2enmod rewrite

sudo cp Configs/netcore.conf /etc/apache2/conf-enabled/

sudo service apache2 restart

sudo apachectl configtest

sudo cp -a publish/ /var/netcore/

sudo cp Configs/ISSMWebAPI.service  /etc/systemd/system/

sudo systemctl enable ISSMWebAPI

sudo systemctl start ISSMWebAPI