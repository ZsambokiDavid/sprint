#!bin/bash
apt install wget
wget https://r.mariadb.com/downloads/mariadb_repo_setup
echo "ad125f01bada12a1ba2f9986a21c59d2cccbe8d584e7f55079ecbeb7f43a4da4  mariadb_repo_setup" \
    | sha256sum -c -
chmod +x mariadb_repo_setup
./mariadb_repo_setup \
   --mariadb-server-version="mariadb-10.6"
apt install libmariadb3 libmariadb-dev
pip install --upgrade pip
python3 pip install wheel
python3 -m pip install mariadb