from PyQt5 import QtCore, QtGui, QtWidgets

from arangoDB_component.arango_tab_model import ArangoTabModel
from utils.arango_utils import ArangoUtils

class ArangoTabController:
    def __init__(self):

        self.for_database_type = "arango"

        self.arango_tab_model = ArangoTabModel()
        self.arango_utils = ArangoUtils()

    def load_table_data(self, database_name, table_name, dataTableWidget):
        self.arango_tab_model.load_table_data(database_name, table_name, dataTableWidget)