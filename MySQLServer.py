import mysql.connector
from mysql.connector import Error

try:
    # Connect to MySQL Server (Replace with your actual credentials)
    connection = mysql.connector.connect(
        host="localhost",
        user="your_username",
        password="your_password"
    )

    if connection.is_connected():
        cursor = connection.cursor()
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store;")
        print("Database 'alx_book_store' created successfully!")

except Error as e:
    print(f"Error: {e}")

finally:
    if 'cursor' in locals():
        cursor.close()
    if 'connection' in locals() and connection.is_connected():
        connection.close()
