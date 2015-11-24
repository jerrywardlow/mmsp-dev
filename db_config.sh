apt-get -qqy update

# Install Postgres and psycopg2
apt-get -qqy install postgresql python-psycopg2
# Create new posgres user 'vagrant'
su postgres -c 'createuser -dRS vagrant'
# Create user 'webapp' with pasword
su postgres -c "psql -c \"CREATE USER webapp with password 'secretwebapppassword';\""
su vagrant -c 'createdb'
su vagrant -c 'createdb webappdb'

echo 'cd /vagrant' > /home/vagrant/.bash_profile
