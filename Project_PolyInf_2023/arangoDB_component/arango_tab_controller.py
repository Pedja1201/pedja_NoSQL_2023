from PyQt5 import QtCore, QtGui, QtWidgets

from arangoDB_component.arango_tab_model import ArangoTabModel
from utils.arango_utils import ArangoUtils

class ArangoTabController:
    def __init__(self, database_name, table_name, statusBar, dataTableWidget, DataVerticalLayout):

        self.for_database_type = "arango"

        self.arango_tab_model = ArangoTabModel()
        self.database_name = database_name
        self.table_name = table_name
        self.statusBar = statusBar
        self.dataTableWidget = dataTableWidget
        self.DataVerticalLayout = DataVerticalLayout
        self.arango_utils = ArangoTabModel()
        self.old_dialog = None

    def load_table_data(self, table_data=None, mark_new_row=False):
        self.arango_tab_model.load_table_data(self.database_name, self.table_name, self.dataTableWidget, table_data, mark_new_row)