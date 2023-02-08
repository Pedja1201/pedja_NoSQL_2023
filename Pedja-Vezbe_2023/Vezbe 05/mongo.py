import pymongo

my_client = pymongo.MongoClient("mongodb://localhost:27017/")

# print(my_client.list_database_names())

my_db = my_client["my_database"]

my_col = my_db["customers"]

#print(my_db.list_collection_names())

my_dict = {"name":"Marko", "address":"Savska 5"}

my_col.insert_one(my_dict)

my_dict = {"name":"Petar", "address":"Novosadska 7"}

x = my_col.insert_one(my_dict)

# #print(x.inserted_id)
customers_list = [
    {
        "name":"Ana",
        "address":"Ulica bb"
    },
    {
        "name":"Jana",
        "address":"Nova 12"
    }
]
x = my_col.insert_many(customers_list)
#print(x.inserted_ids)

x = my_col.find_one()
print(x)

customers = my_col.find()
for customer in customers:
    print(customer)

customers = my_col.find({}, {"_id":0, "name":1})
for customer in customers:
    print(customer)

print("------")
customers = my_col.find({"address":"Ulica bb"}, {"_id":0, "name":1})
for customer in customers:
    print(customer)

print("------")
r = my_col.find().sort("name", -1)
for c in r:
    print(c)

""" my_col.delete_one({"address":"Ulica bb"})

x = my_col.delete_many({})
print(x.deleted_count) """


#my_col.drop()

x = my_col.update_many({"address":"Ulica bb"}, {"$set":{"name":"Jovana"}})
print(x.modified_count)
my_col.find().limit(5)
