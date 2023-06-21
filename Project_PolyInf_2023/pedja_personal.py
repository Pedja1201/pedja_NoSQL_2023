from pymongo import MongoClient
from bson import ObjectId

client = MongoClient("mongodb://localhost:27017/")

db = client["personalni"]

collection = db["zadatak"]



import mysql.connector

conn = mysql.connector.connect(
  host="localhost",
  user="root",
  password="pedja10",
  database="baza_cinjenica_final"
)

mycursor = conn.cursor()
oznaka_kompanije = "Poslovni subjekat"
naziv_kompanije = "Poslovni subjekat"
naziv_proizvoda = "Softverski prozvod"

mycursor.callproc("pedja_procedura", [naziv_kompanije, oznaka_kompanije, naziv_proizvoda])

zadatak = []

mycursor.execute("SELECT * FROM temp_results")
for c in mycursor.fetchall():
    naziv_projekta = c[1]
    dokument = {
        "_id": ObjectId(),
        "naslov": {
            "Naslov0": "Pregled projekata",
            "naslov1": f"Kompanija: <p1><{naziv_kompanije}><{naziv_kompanije}>",
            "naslov2": "U kojima je realizovan softverski proizvod",
            "naslov3": f"<p2><naziv_proizvoda>"
        },

    }
    zadatak.append(dokument)

collection.insert_many(zadatak)

mycursor.close()
conn.close()