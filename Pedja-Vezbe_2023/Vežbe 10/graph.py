import json
from pyArango.connection import *
from pyArango.collection import Field, Collection, Edges
from pyArango.graph import Graph, EdgeDefinition


conn = Connection(username="root", password="")

# db = conn.createDatabase(name="got")
db = conn["got"]


class Characters(Collection):
    _fields = {
        "name":Field(),
        "surname":Field()
    }

class ChildOf(Edges):
    pass

class got(Graph):
    _edgeDefinitions = (EdgeDefinition(edgesCollection="ChildOf", fromCollections=["Characters"], toCollections=["Characters"]) ,)

g = db.createGraph("got")

data = []
with open("characters.json", "r", encoding="utf-8") as f:
    data=json.load(f)
relations = []
with open("relations.json", "r", encoding="utf-8") as f:
    relations=json.load(f)

vertices = []
for d in data:
    try:
        surname = d["surname"]
    except KeyError:
        d["surname"]=""
    v = g.createVertex("Characters", {"name":d["name"], "surname":d["surname"]}, )
    v.save()
    vertices.append(v)

for r in relations:
    parent = [v for v in vertices if v["name"]==r["parent"]["name"] and v["surname"]==r["parent"]["surname"]][0]["_id"]
    child = [v for v in vertices if v["name"]==r["child"]["name"] and v["surname"]==r["child"]["surname"]][0]["_id"]
    g.link("ChildOf", child, parent, {})


