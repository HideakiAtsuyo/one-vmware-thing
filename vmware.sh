sudo apt install -y curl git libaio1
sudo curl -L https://www.vmware.com/go/getworkstation-linux > Downloads/vmware.bin
sudo chmod +x Downloads/vmware.bin
sudo ./vmware.bin
sudo git clone -b workstation-$( grep player.product.version /etc/vmware/config | sed '/.*\"\(.*\)\".*/ s//\1/g' ) https://github.com/mkubecek/vmware-host-modules.git /opt/vmware-host-modules/
cd /opt/vmware-host-modules
sudo make
sudo make install
sudo vmware
