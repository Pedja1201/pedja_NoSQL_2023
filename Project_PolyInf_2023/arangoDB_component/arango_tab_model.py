from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import QMessageBox, QTreeWidgetItem, QTableWidgetItem
from PyQt5.QtCore import Qt
import re
import json
from bson.json_util import loads, dumps

from utils.arango_utils import ArangoUtils

class ArangoTabModel:
    def __init__(self):
        self.arango_utils = ArangoUtils()

    #Greska je u ovoj funkciji i get_table_data
    def load_table_data(self, database_name, table_name, dataTableWidget, table_data=None, mark_new_row=False):
        table_data = self.arango_utils.get_table_data(database_name, table_name)

        print("")
        print("DOBIJEN IZ load_table_data: ", table_data)
        print("")
        
        data = str(table_data)

        pattern = r"_id: ([^,]+).*?<store: ({[^>]+})>"

        matches = re.findall(pattern, data)

        results = []

        for match in matches:
            try:
                store_data = json.loads(match[1].replace("'", "\""))
                results.append((match[0], store_data))
            except json.JSONDecodeError as e:
                print(f"Greška pri parsiranju JSON-a: {e}")

        json_data = json.dumps(results, indent=4, sort_keys=True)

        dataTableWidget.addItem(json_data)

        print("STORES IZ load_table_data: ", json_data)

        # print("")
        # print("DOBIJEN IZ LOAD TALBE DATA-TABLE COLUMNS: ", table_columns)
        # print("")
        
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