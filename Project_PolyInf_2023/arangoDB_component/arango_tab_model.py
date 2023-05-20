from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import QMessageBox, QTreeWidgetItem, QTableWidgetItem
from PyQt5.QtCore import Qt

from utils.arango_utils import ArangoUtils

class ArangoTabModel:
    def __init__(self):
        self.arango_utils = ArangoUtils()

    #Greska je u ovoj funkciji i get_table_data
    def load_table_data(self, database_name, table_name, dataTableWidget, table_data=None, mark_new_row=False):
        table_data = self.arango_utils.get_table_data(database_name, table_name)
        table_columns = self.arango_utils.get_table_columns(database_name, table_name)
        print("")
        print("DOBIJEN IZ LOAD TALBE DATA-TABLE DATA: ", table_data)
        print("")
        print("")
        print("DOBIJEN IZ LOAD TALBE DATA-TABLE COLUMNS: ", table_columns)
        print("")
        # if table_data is None:
        #     table_data = []

        # table_row_count = len(table_data)
        # if table_row_count > 0:

        #     table_data_dicts = [doc.to_dict() for doc in table_data]

        #     table_column_names = list(table_data_dicts[0].keys())
        #     table_column_count = len(table_column_names)


        #     dataTableWidget.setRowCount(table_row_count)
        #     dataTableWidget.setColumnCount(table_column_count)
        #     dataTableWidget.setHorizontalHeaderLabels(table_column_names)

        #     for row, data_row in enumerate(table_data_dicts):
        #         for column, key in enumerate(table_column_names):
        #             value = data_row[key]
        #             item = QtWidgets.QTableWidgetItem(str(value))
        #             dataTableWidget.setItem(row, column, item)

        # if mark_new_row:
        #     dataTableWidget.selectRow(table_row_count - 1)

    
    # def has_id_column(self, table_name):
    #     mysql_spec = load_spec()

    #     if table_name in mysql_spec.keys():
    #         id_column_name = mysql_spec[table_name]["id_col"]
    #         if id_column_name != "":
    #             return True
    #         else:
    #             return False

    #     print("Nema tabele u arango specifikaciji za tabele")        
    #     return False