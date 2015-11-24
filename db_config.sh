apt-get -qqy update

apt-get -qqy install postgresql python-psycopg2
su postgres -c 'createuser -dRS vagrant'
su postgres -c "psql -c \"CREATE USER webapp with password 'secretwebapppassword';\""
su vagrant -c 'createdb'
su vagrant -c 'createdb webappdb'

echo 'cd /vagrant' > /home/vagrant/.bash_profile
