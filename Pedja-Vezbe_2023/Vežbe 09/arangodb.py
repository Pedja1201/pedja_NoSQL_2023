from pyArango.connection import *

conn = Connection(username="root", password="")
                #Prazna lozinka jer nisam uneo prilikom logiovanja

# conn.createDatabase("school")
db = conn["school"]

# db.createCollection(name="Students")

students = db["Students"]
doc = students.createDocument()
doc["name"] = "Predrag Radak"
print(doc)
doc.save()

doc = students.createDocument()
doc["name"] = "Petar Petrovic"
doc["_key"] = "petarpetrovic"
print(doc)
doc.save()

