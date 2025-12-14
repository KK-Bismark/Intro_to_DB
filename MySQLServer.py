# A simple python script that creates the database alx_book_store in
# your MySQL server.

import mysql.connector


def main():
    try:
        # make the connection to the mysql server
        connection = mysql.connector.connect(
                host = 'localhost',
                user = 'root',
                password = 'password'
        )

        if connection.is_connected():
            cursor = connection.cursor()
            # execution of the creation of the database
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")
            cursor.close()
    
    except connector.Error as err:
        print("Error trying to connect to mysql server: {err}")

    finally:
        if connection.is_connected():
            connection.close()



if __name__ == "__main__":
    main()

