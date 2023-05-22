from PyQt5 import QtWidgets
from PyQt5 import QtCore

from arangoDB_component.arango_tab_controller import ArangoTabController

class ArangoTabViewer(QtWidgets.QWidget):
    def __init__(self, database_name, table_name, statusBar, parent=None):
        super().__init__(parent=parent)

        self.database_name = database_name
        self.table_name = table_name
        self.statusBar = statusBar
        self.tab_controller = ArangoTabController()
        

        self.setObjectName("arangoTabViewer")
        self.verticalLayoutWidget_2 = QtWidgets.QWidget(self)
        self.verticalLayoutWidget_2.setGeometry(QtCore.QRect(5, 10, 1630, 205))
        self.verticalLayoutWidget_2.setObjectName("verticalLayoutWidget_2")
        self.DataVerticalLayout = QtWidgets.QVBoxLayout(self.verticalLayoutWidget_2)
        self.DataVerticalLayout.setContentsMargins(0, 0, 0, 0)
        self.DataVerticalLayout.setObjectName("DataVerticalLayout")

        #Prikaz tabele ArangoDB
        self.dataTableWidget = QtWidgets.QListWidget(self.verticalLayoutWidget_2)
        self.dataTableWidget.setObjectName("dataTableView")
        self.DataVerticalLayout.addWidget(self.dataTableWidget)
        self.dataTableWidget.itemClicked.connect(self.clicked)

        self.load_table_data()

    def load_table_data(self):
        self.tab_controller.load_table_data(self.database_name, self.table_name, self.dataTableWidget)

    def clicked(self):
        print("test test")