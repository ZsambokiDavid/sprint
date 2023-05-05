#!bin/bash
apt-get update
apt install python3-pip
pip install --upgrade pip
pip install wheel
apt install wget
wget https://r.mariadb.com/downloads/mariadb_repo_setup
echo "ad125f01bada12a1ba2f9986a21c59d2cccbe8d584e7f55079ecbeb7f43a4da4  mariadb_repo_setup" \
    | sha256sum -c -
chmod +x mariadb_repo_setup
./mariadb_repo_setup \
   --mariadb-server-version="mariadb-10.6"
apt install libmariadb3 libmariadb-dev
#python3 -m pip install mariadb --no-cache-dir
python -m pip download --only-binary :all: --dest . --no-cache mariadb