
from pyArango.connection import *
from pyArango.collection import Field, Collection, Edges
from pyArango.graph import Graph, EdgeDefinition


conn = Connection(username="root", password="")

# db = conn.createDatabase(name="graph")
db = conn["graph"]

class Female(Collection):
    _fields = {
        "name": Field()
    }

class Male(Collection):
    _fields = {
        "name": Field()
    }

class Relation(Edges):
    _fields = {
        "type": Field()
    }


class social(Graph):
    _edgeDefinitions = (EdgeDefinition(
        edgesCollection="Relation", fromCollections=["Female", "Male"], toCollections=["Female", "Male"]), )

g = db.createGraph("social")

a = g.createVertex("Female", {"name":"Ana", "_key":"ana"})
a.save()
b = g.createVertex("Female", {"name":"Jana", "_key":"jana"})
b.save()
c = g.createVertex("Male", {"name":"Marko", "_key":"marko"})
c.save()
d = g.createVertex("Male", {"name":"Janko", "_key":"janko"})
d.save()


g.link("Relation", a, b, {"type":"friend", "_key":"anaAndJana"})
g.link("Relation", a, c, {"type":"married", "_key":"anaAndMarko"})
g.link("Relation", b, d, {"type":"married", "_key":"janaAndJanko"})
g.link("Relation", c, d, {"type":"friend", "_key":"markoAndJanko"})


print(g.traverse(a, direction="outbound", maxDepth=1))

#g.deleteVertex(c)

    