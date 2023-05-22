import datetime
from PyQt5.QtWidgets import QApplication, QDialog, QVBoxLayout, QLabel, QComboBox, QPushButton
import mysql.connector
from pymongo import MongoClient
import json
from bson import ObjectId

class Transformator(QDialog):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Transformation MySQL database into MongoDB")
        self.setLayout(QVBoxLayout())

        self.label = QLabel("Choose your MySQL database for MongoDB:")
        self.layout().addWidget(self.label)

        self.combo_box = QComboBox()
        self.layout().addWidget(self.combo_box)

        self.button = QPushButton("Start transformation")
        self.button.clicked.connect(self.run_transformation)
        self.layout().addWidget(self.button)

        self.exit_button = QPushButton("Finish")
        self.exit_button.clicked.connect(self.reject)  # Close the dialog
        self.layout().addWidget(self.exit_button)

        self.mysql_connection = mysql.connector.connect(
            host='localhost', 
            user='root',
             # password='root', ##ForOthersMemeber
            password='pedja10'
        )
        # self.mongo_client = MongoClient('mongodb://localhost:27017/')  #ForOthersMemeber
        self.mongo_client = MongoClient('mongodb://root:root@localhost:27017/')  # PedjaDocker

        self.load_mysql_base()

    def load_mysql_base(self):
        self.combo_box.clear()

        mysql_cursor = self.mysql_connection.cursor()
        mysql_cursor.execute("SHOW DATABASES")

        mysql_baze = [rezultat[0] for rezultat in mysql_cursor.fetchall()]
        self.combo_box.addItems(mysql_baze)

    def run_transformation(self):
        mysql_base = self.combo_box.currentText()

        mysql_connection = mysql.connector.connect(
            host='localhost',  
            user='root',
            # password='root', ##ForOthersMemeber
            password='pedja10',
            database=mysql_base
        )

        mongo_db = self.mongo_client[mysql_base]

        mysql_cursor = mysql_connection.cursor()
        mysql_cursor.execute("SHOW TABLES")
        mysql_tablice = [rezultat[0] for rezultat in mysql_cursor.fetchall()]

        results = {}

        for tabela in mysql_tablice:
            mysql_cursor.execute(f"SELECT * FROM {tabela}")
            result = mysql_cursor.fetchall()

            mongo_collection = mongo_db[tabela]
            collection_result = []
            for red in result:
                document = {}
                for i, polje in enumerate(mysql_cursor.description):
                    if isinstance(red[i], ObjectId):
                        document[polje[0]] = str(red[i])
                    elif isinstance(red[i], datetime.date):
                        document[polje[0]] = red[i].strftime("%Y-%m-%d")  # Convert date to string
                    else:
                        document[polje[0]] = red[i]
                mongo_collection.insert_one(document)
                collection_result.append(document)

            results[tabela] = collection_result

        with open('result.json', 'w') as f:
            json.dump(results, f, default=str, indent=4, separators=(',', ': '))

        self.label.setText("Transformation complete! The results are written in result.json.")

# if __name__ == "__main__":
#     app = QApplication([])
#     dialog = Transformator()
#     dialog.show()
#     app.exec_()

