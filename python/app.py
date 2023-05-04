#!/usr/bin/env python
import mariadb
import sys

def main():

    try:
        conn = mariadb.connect(
            user="david",
            password="admin",
            host="ubunode",
            port=3306,
            database="mariadb"

         )
    except mariadb.Error as e:
        print(f"Error connecting to MariaDB Platform: {e}")
        sys.exit(1)

    cur = conn.cursor()

if __name__ == "__main__":
    main()
