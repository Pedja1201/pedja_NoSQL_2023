from PyQt5 import QtWidgets
from PyQt5 import QtCore

from arangoDB_component.arango_tab_controller import ArangoTabController

class ArangoTabViewer(QtWidgets.QWidget):
    def __init__(self, database_name, table_name, statusBar, CRUDActionsViewer, parent=None):
        super().__init__(parent=parent)

        self.CRUDActionsViewer = CRUDActionsViewer

        self.setObjectName("arangoTabViewer")
        self.verticalLayoutWidget_2 = QtWidgets.QWidget(self)
        self.verticalLayoutWidget_2.setGeometry(QtCore.QRect(5, 10, 1630, 205))
        self.verticalLayoutWidget_2.setObjectName("verticalLayoutWidget_2")
        self.DataVerticalLayout = QtWidgets.QVBoxLayout(
            self.verticalLayoutWidget_2)
        self.DataVerticalLayout.setContentsMargins(0, 0, 0, 0)
        self.DataVerticalLayout.setObjectName("DataVerticalLayout")

        #Prikaz tabele ArangoDB
        self.dataTableWidget = QtWidgets.QTableWidget(
            self.verticalLayoutWidget_2)
        self.dataTableWidget.setObjectName("dataTableView")
        self.header = self.dataTableWidget.horizontalHeader()
        self.DataVerticalLayout.addWidget(self.dataTableWidget)

        # obavezno polje
        self.tab_controller = ArangoTabController(
            database_name, table_name, statusBar, self.dataTableWidget, self.DataVerticalLayout)

        self.dataTableWidget.clicked.connect(
            lambda x: self.tab_controller.change_controller_for_CRUDActionViewer(CRUDActionsViewer))
        self.header.sectionClicked.connect(
            lambda x: self.tab_controller.change_controller_for_CRUDActionViewer(CRUDActionsViewer))

        self.load_table_data()

    def load_table_data(self):
        self.tab_controller.load_table_data()