from hashlib import new
from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import QMessageBox
from pyArango.connection import *
from pyArango import *

from utils.load_config_arango import load_config


class ArangoUtils:
    class __ArangoUtils:
        def __init__(self):
            self.mydb = None

        def load_and_connect_db(self, statusBar):
            dialog = QtWidgets.QFileDialog()
            if dialog.exec_():
                filenames = dialog.selectedFiles()
                config_filepath = filenames[0]
                config_json = load_config(config_filepath)
                print(config_json)

                try:
                    self.mydb = Connection(username=config_json["username"], password=config_json["password"],
                                           arangoURL=config_json["arangoURL"])
                    statusBar.showMessage("Connection made!")
                    print("Connection with Arango Database made!")
                    # print(self.mydb.databases())
                except Exception as e:
                    print(e)
                    statusBar.showMessage("Error In Connection")

        def get_all_databases(self):
            databases = []
            if self.mydb == None:
                msg = QMessageBox()
                msg.setIcon(QMessageBox.Information)
                msg.setText("You need to connect first.")
                msg.setWindowTitle("Info")
                msg.setStandardButtons(QMessageBox.Ok | QMessageBox.Cancel)
                msg.exec_()
            else:
                for i in self.mydb.databases:
                    databases.append(i)

                return databases

        def get_all_tables(self, arangodb_name):
            collections = []

            collections = self.mydb[arangodb_name].collections

            # for i in self.mydb[arangodb_name].collections():
            #     collections.append(i)

            return collections

        def get_table_data(self, database_name, table_name):
            try:
                db = self.mydb[database_name]

                collection = db[table_name]

                table_data = list(collection.fetchAll())
                print("TABLE DATA: ", table_data)
                return table_data

            except Exception as e:
                print(e)
                msg = QMessageBox()
                msg.setIcon(QMessageBox.Information)
                msg.setText("Getting table data failed.")
                msg.setWindowTitle("Info")
                msg.setStandardButtons(QMessageBox.Ok | QMessageBox.Cancel)
                msg.exec_()

        def get_table_columns(self, database_name, table_name):
            try:
                db = self.mydb[database_name]

                collection = db[table_name]

                table_columns = list(collection.properties().keys())
                print("TABLE COLUMNS: ", table_columns)
                return table_columns
            except Exception as e:
                print(e)
                msg = QMessageBox()
                msg.setIcon(QMessageBox.Information)
                msg.setText("Getting table columns failed.")
                msg.setWindowTitle("Info")
                msg.setStandardButtons(QMessageBox.Ok | QMessageBox.Cancel)
                msg.exec_()

    instance = None

    def __init__(self):
        if not ArangoUtils.instance:
            ArangoUtils.instance = ArangoUtils.__ArangoUtils()
        else:
            pass

    def __getattr__(self, name):
        return getattr(self.instance, name)