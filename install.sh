apt-get install build-essential libboost-all-dev libssl-dev
make
cp ducatus-seeder.service /etc/systemd/system/
systemctl start ducatus-seeder.service
systemctl enable ducatus-seeder.service
