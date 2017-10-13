apt-get install -y build-essential libboost-all-dev libssl-dev
make
cp ducatus-seeder.service /etc/systemd/system/
systemctl daemon-reload
systemctl start ducatus-seeder.service
systemctl enable ducatus-seeder.service
