sql = "INSERT INTO your_table (customer_id, customer_name, email, address) VALUES (%s, %s)"
val = (2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness Ave.'),  
(3, 'Obed Ehoneah', 'eobed@sandtech.com', '125 Happiness Ave.'),  
(4, 'Nehemial Kamolu', 'nkamolu@sandtech.com', '126 Happiness Ave.'); 
mycursor.execute(sql, val)
mydb.commit()  # Commit the changes
