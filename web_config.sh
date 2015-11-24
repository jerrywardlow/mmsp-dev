apt-get -qqy update

apt-get -qqy install apache2
apt-get -qqy install libapache2-mod-wsgi

apt-get -qqy install postgresql python-psycopg2
su postgres -c 'createuser -dRS vagrant'

apt-get -qqy install python-pip

echo 'cd /vagrant' > /home/vagrant/.bash_profile
