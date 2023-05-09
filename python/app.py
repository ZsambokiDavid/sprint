#!/usr/bin/env python
import mariadb
import sys

def main():

    try:
        conn = mariadb.connect(
            user="david",
            password="admin",
            host="192.168.104.66",
            port=3306,
            database="mariadb"

         )
    except mariadb.Error as e:
        print(f"Error connecting to MariaDB Platform: {e}")
        sys.exit(1)

    cur = conn.cursor()

# execute your query
    cur.execute("SELECT * FROM mariadb;")
#    cur.execute("show tables;")
  
# fetch all the matching rows 
    result = cur.fetchall()
  
# loop through the rows
    for row in result:
        print(row)
        print("\n")

if __name__ == "__main__":
    main()
