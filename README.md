# pedja_NoSQL_2023
Predmet iz NoSQL baze podataka u letnjem semestru 4. godine

Predmet  NoSQL baze je sintetski predmet sa misijom podizanja nivoa veština i znanja potrebnih za izradu složenih softverskih proizvoda koji su oslonjeni na skladišta podataka  zesnovana na različitim modelima. 
Dve komponente projekta:
1. Klijentska strana - (tehnologiju biraju timovi). 
2. Skladište podataka - heterogeno skladište:
1.	Skladište činjenica - relacioni model (MySQL SUBP ) - služi kao podloga za formiranje dokumenata i grafova. 
2.	Skladište dokumenata - dokument model (MongoDB ) - podržava skladištenje i rudarenje po dokumentima formiranim na osnovu transformacije podšema skladišta činjenica. Svaka podšema generiše modele dokumenta čije se instance trajno čuvaju u skladištu dokumenata i na zahtev vizualiziraju.
3.	Skladište povezanih struktura - graf model (ArangoDB) - podržava skladištenje multidimenzionalnih grafova formiranih na osnovu transformacija podšema skladišta činjenica. Svaka podšema generiše model grafa čije se instance trajno čuvaju u skladištu grafova.
