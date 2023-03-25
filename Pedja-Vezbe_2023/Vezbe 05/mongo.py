import pymongo

my_client = pymongo.MongoClient("mongodb://localhost:27017/")

print(my_client.list_database_names()) #Ispis svih databases

my_db = my_client["my_database"] #kreiramo novu iakko ne postoji

my_col = my_db["customers"] #kolekciju pravimo za database

#print(my_db.list_collection_names())

my_dict = {"name":"Marko", "address":"Savska 5"}

my_col.insert_one(my_dict) #Ubacujemo podatke u novu bazu

my_dict = {"name":"Petar", "address":"Novosadska 7"}

x = my_col.insert_one(my_dict) #Ubacujemo podatke u novu bazu

# #print(x.inserted_id)
customers_list = [ #pravimo listu vise customera
    {
        "name":"Ana",
        "address":"Ulica bb"
    },
    {
        "name":"Jana",
        "address":"Nova 12"
    }
]
x = my_col.insert_many(customers_list) #Ubacujemo vise podataka
#print(x.inserted_ids)

x = my_col.find_one()
print(x)

customers = my_col.find() #Pronalazenje i prolazak svih customera 
for customer in customers:
    print(customer)

customers = my_col.find({}, {"_id":0, "name":1})  #Pronalazenje customera po odredjenim atributima
for customer in customers:
    print(customer)

print("------")
customers = my_col.find({"address":"Ulica bb"}, {"_id":0, "name":1})#Pronalazenje customera po odredjenim atributima
for customer in customers:
    print(customer)

print("------")
r = my_col.find().sort("name", -1) #Pronalazenje customera po odredjenim atributima
for c in r:
    print(c)

""" my_col.delete_one({"address":"Ulica bb"})

x = my_col.delete_many({})
print(x.deleted_count) """


#my_col.drop()

#Izmena customera(prva zagrada je ono sta zelimo da menjamo a druga setujemo novo sto zelimo da zimenimo)
x = my_col.update_many({"address":"Ulica bb"}, {"$set":{"name":"Jovana"}}) 
print(x.modified_count)
my_col.find().limit(5)
