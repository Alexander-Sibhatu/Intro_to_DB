import mysql.connector
from mysql.connector import Error

def create_database():
    try:

        # Connect to MySQL Server
        mydb = mysql.connector.connect(
            host = "localhost",
            user = "root",
            password = "#PpmP#1991Didudada05121991"
        )
        
        if mydb.is_connected():
            # create a cursor object
            mycursor = mydb.cursor()
            mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully")
        
    except mysql.connector.Error as e:
        print(f"MySQL Error: {e}")

    finally:
        if mydb.is_connected():
            mycursor.close()
            mydb.close()
            print("MySQL connection is closed")


if __name__ ==" __main__":
    create_database()

