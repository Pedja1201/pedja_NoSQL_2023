from pyArango.connection import *

conn = Connection(username="root", password="")
                #Prazna lozinka jer nisam uneo prilikom logiovanja

#conn.createDatabase("school")
db = conn["school"]

# db.createCollection(name="Students")

students = db["Students"]
doc = students.createDocument()
doc["name"] = "Marko Markovic"
print(doc)
#doc.save()

doc = students.createDocument()
doc["name"] = "Petar Petrovic"
doc["_key"] = "petarpetrovic"
print(doc)
#doc.save()


def update_name(document, name):
    document["name"] = name
    document.save()


#e = students["petarpetrovic"]
#e.delete()


aql  = "FOR x In Students return x.name"
result = db.AQLQuery(aql)

print(result)


doc = {"name":"TEST"}

bind = {"doc":doc, "key":"petarpetrovic"}
aql = "UPDATE @key with @doc in Students let updated = NEW return updated"
result = db.AQLQuery(aql, bindVars = bind)
print(result)


doc = {"_key":"anaanic", "name":"Ana Anic", "gpa":9.0}
bind = {"doc":doc}
aql = "insert @doc into Students let newDoc = NEW return newDoc"
result = db.AQLQuery(aql, bindVars = bind)
print(result)

