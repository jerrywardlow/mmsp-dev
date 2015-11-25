apt-get -qqy update

# Install Postgres and psycopg2
apt-get -qqy install postgresql python-psycopg2
# Create new posgres user 'vagrant'
su postgres -c 'createuser -dRS vagrant'
# Create user 'webapp' with pasword
su postgres -c "psql -c \"CREATE USER webapp with password 'secretwebapppassword';\""
su vagrant -c 'createdb'
su vagrant -c 'createdb webappdb'
# Allow incoming postgres connections
CONF=/etc/postgresql/9.3/main/postgresql.conf
sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '*'/" $CONF
cat >> /etc/postgresql/9.3/main/pg_hba.conf <<EOF
host    all    all    devweb    trust
EOF
sudo service postgresql restart

echo 'cd /vagrant' > /home/vagrant/.bash_profile
