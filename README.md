install vagrant

then use `vagrant up` to set up the machine and `vagrant ssh` to log in.

then run:

tr -d '\r' < /vagrant/run_setup.sh > run_setup.sh
chmod +x run_setup.sh
./run_setup.sh