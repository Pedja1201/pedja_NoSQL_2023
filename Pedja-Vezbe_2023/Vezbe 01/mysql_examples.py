import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="pedja10"
)

# print(mydb)

mycursor = mydb.cursor()

# mycursor.execute("DROP DATABASE IF EXISTS vezbe_nosql")

mycursor.execute("CREATE DATABASE IF NOT EXISTS vezbe_nosql")

mycursor.execute("SHOW DATABASES")
dbs = mycursor.fetchall()
print(dbs)
mycursor.execute("USE vezbe_nosql")

#mycursor.execute("DROP TABLE IF EXISTS customers")

mycursor.execute("CREATE TABLE IF NOT EXISTS customers (name VARCHAR(255), address VARCHAR(255))")

mycursor.execute("SHOW TABLES")
print(mycursor.fetchall())

#mycursor.execute("ALTER TABLE customers ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY")
sql = "INSERT INTO customers (name, address) VALUES (%s, %s)"
val = ("Marko", "Ulica bb")
#mycursor.execute(sql, val)

#mydb.commit()

val = [("Petar", "Novosadska 20"), ("Ana", "Zeleznicka 5")]

#mycursor.executemany(sql, val)

#mydb.commit()

mycursor.execute("SELECT * FROM customers")
print(mycursor.fetchall())
mycursor.execute("SELECT * FROM customers")
result = mycursor.fetchall()

for i in result:
    print(i)

mycursor.execute("SELECT name FROM customers")
print(mycursor.fetchall())

sql = "SELECT * FROM customers WHERE address='Ulica bb'"
mycursor.execute(sql)
print("----")
print(mycursor.fetchall())

sql = "SELECT * FROM customers WHERE address LIKE '%Ulica%'"

mycursor.execute(sql)
print(mycursor.fetchall())

sql = "SELECT * FROM customers ORDER BY name DESC"
mycursor.execute(sql)
print(mycursor.fetchall())

sql = "DELETE FROM customers WHERE address = %s"
adr = ("Ulica bb",)
mycursor.execute(sql, adr)
mydb.commit()
print(mycursor.rowcount)

sql = "UPDATE customers SET address = %s WHERE address=%s"
val = ("Novosadska 15", "Novosadska 20")

mycursor.execute(sql, val)
mydb.commit()
print(mycursor.rowcount)