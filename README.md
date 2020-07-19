# mediawiki
template for setting up a private mediawiki with docker, backed with mariadb and parsoid, with VisualEditor enabled.  

step 0: change usernames/passwords

step 1: ./setup-networks.sh
step 2: ./run-parsoid.sh
step 3: chmod src/data/mariadb as needed based on however you run docker
step 4: ./run-mediawiki-mariadb.sh
step 5: ./build-docker.sh
step 6: chmod src/data/mediawiki as needed based on however you run docker
step 6: ./run-mediawiki.sh

browse to http://localhost:8080
