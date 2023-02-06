from PyQt5 import QtCore, QtGui, QtWidgets
from crud_actions_component.crud_actions_viewer import CRUDActionsViewer

from gui.controller.main_window_controller import MainWindowController

class MainWindowViewer(object):  #Stigao sam do RefTables component
    def __init__(self):
        self.main_window_controller = MainWindowController()

    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(900, 620)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")

        # CRUD akcije
        self.CRUDActionsViewer = CRUDActionsViewer(self.centralwidget)

        # databasesTabWidget
        self.databasesTabWidget = QtWidgets.QTabWidget(self.centralwidget)
        self.databasesTabWidget.setGeometry(QtCore.QRect(10, 50, 241, 511))
        self.databasesTabWidget.setObjectName("databasesTabWidget")

        # MySQL deo u databasesTabWidget-u
        self.mysqlTab = QtWidgets.QWidget()
        self.mysqlTab.setObjectName("mysqlTab")
        self.verticalLayoutWidget = QtWidgets.QWidget(self.mysqlTab)
        self.verticalLayoutWidget.setGeometry(QtCore.QRect(2, 5, 231, 471))
        self.verticalLayoutWidget.setObjectName("verticalLayoutWidget")
        self.mySQLVerticalLayout = QtWidgets.QVBoxLayout(self.verticalLayoutWidget)
        self.mySQLVerticalLayout.setContentsMargins(0, 0, 0, 0)
        self.mySQLVerticalLayout.setObjectName("mySQLVerticalLayout")
        #   Deo za prikaz baze i tabela
        self.mySQLTreeWidget = QtWidgets.QTreeWidget(self.verticalLayoutWidget)
        self.mySQLTreeWidget.setObjectName("mySQLTreeWidget")
        self.mySQLTreeWidget.headerItem().setText(0, "Databases:")
        self.mySQLTreeWidget.setColumnCount(1)
        self.mySQLVerticalLayout.addWidget(self.mySQLTreeWidget)
        #   Akcije: konekcija
        self.connectMySQLDBPushButton = QtWidgets.QPushButton(self.verticalLayoutWidget)
        self.connectMySQLDBPushButton.setObjectName("connectMySQLDBPushButton")
        self.mySQLVerticalLayout.addWidget(self.connectMySQLDBPushButton)
        #   Akcije: brisanje i kreiranje nove baze
        self.deleteMySQLDBPushButton = QtWidgets.QPushButton(self.verticalLayoutWidget)
        self.deleteMySQLDBPushButton.setObjectName("deleteMySQLDBPushButton")
        self.mySQLVerticalLayout.addWidget(self.deleteMySQLDBPushButton)
        self.createMySQLDBHorizontalLayout = QtWidgets.QHBoxLayout()
        self.createMySQLDBHorizontalLayout.setObjectName("createMySQLDBHorizontalLayout")
        self.newMySQLNameLineEdit = QtWidgets.QLineEdit(self.verticalLayoutWidget)
        self.newMySQLNameLineEdit.setObjectName("newMySQLNameLineEdit")
        self.createMySQLDBHorizontalLayout.addWidget(self.newMySQLNameLineEdit)
        self.createMySQLDBPushButton = QtWidgets.QPushButton(self.verticalLayoutWidget)
        self.createMySQLDBPushButton.setObjectName("createMySQLDBPushButton")
        self.createMySQLDBHorizontalLayout.addWidget(self.createMySQLDBPushButton)
        self.mySQLVerticalLayout.addLayout(self.createMySQLDBHorizontalLayout)
        self.databasesTabWidget.addTab(self.mysqlTab, "")

        # Mongo deo u databasesTabWidget-u
        self.mongoTab = QtWidgets.QWidget()
        self.mongoTab.setObjectName("mongoTab")
        self.verticalLayoutWidgetDB = QtWidgets.QWidget(self.mongoTab)
        self.verticalLayoutWidgetDB.setGeometry(QtCore.QRect(2, 5, 231, 471))
        self.verticalLayoutWidgetDB.setObjectName("verticalLayoutWidgetDB")
        self.mongoDBVerticalLayout = QtWidgets.QVBoxLayout(self.verticalLayoutWidgetDB)
        self.mongoDBVerticalLayout.setContentsMargins(0, 0, 0, 0)
        self.mongoDBVerticalLayout.setObjectName("mongoDBVerticalLayout")
        #   Deo za prikaz baze i tabela
        self.mongoDBTreeWidget = QtWidgets.QTreeWidget(self.verticalLayoutWidgetDB)
        self.mongoDBTreeWidget.setObjectName("mongoDBTreeWidget")
        self.mongoDBTreeWidget.headerItem().setText(0, "Databases:")
        self.mongoDBTreeWidget.setColumnCount(1)
        self.mongoDBVerticalLayout.addWidget(self.mongoDBTreeWidget)
        #   Akcije: konekcija
        self.horizontal = QtWidgets.QHBoxLayout()
        self.horizontal.setObjectName("horizontallayoutforbuttons")
        self.connectmongoDBPushButton = QtWidgets.QPushButton(self.verticalLayoutWidgetDB)
        self.connectmongoDBPushButton.setObjectName("connectmongoDBPushButton")
        self.transformButton = QtWidgets.QPushButton(self.verticalLayoutWidgetDB)
        self.transformButton.setObjectName("transformmongoDBPushButton")
        self.horizontal.addWidget(self.transformButton)
        self.horizontal.addWidget(self.connectmongoDBPushButton)
        self.mongoDBVerticalLayout.addLayout(self.horizontal)
        self.deleteMongoDBPushButton = QtWidgets.QPushButton(self.verticalLayoutWidget)
        self.deleteMongoDBPushButton.setObjectName("deleteMongoDBPushButton")
        self.mongoDBVerticalLayout.addWidget(self.deleteMongoDBPushButton)
        self.createMongoDBHorizontalLayout = QtWidgets.QHBoxLayout()
        self.createMongoDBHorizontalLayout.setObjectName("createMongoDBHorizontalLayout")
        self.newMongoNameLineEdit = QtWidgets.QLineEdit(self.verticalLayoutWidget)
        self.newMongoNameLineEdit.setObjectName("newMongoNameLineEdit")
        self.createMongoDBHorizontalLayout.addWidget(self.newMongoNameLineEdit)
        self.createMongoDBPushButton = QtWidgets.QPushButton(self.verticalLayoutWidget)
        self.createMongoDBPushButton.setObjectName("createMongoDBPushButton")
        self.createMongoDBHorizontalLayout.addWidget(self.createMongoDBPushButton)
        self.mongoDBVerticalLayout.addLayout(self.createMongoDBHorizontalLayout)
        self.databasesTabWidget.addTab(self.mongoTab, "")

        # Arango deo u databasesTabWidget-u
        self.arangoTab = QtWidgets.QWidget()
        self.arangoTab.setObjectName("arangoTab")
        self.databasesTabWidget.addTab(self.arangoTab, "")

        #   Ovde ide Arango deo za prikaz baza, tabela i akcije

        # Deo za prikaz podataka baza kroz tabove unutar dataTabWidget-a
        self.dataTabWidget = QtWidgets.QTabWidget(self.centralwidget)
        self.dataTabWidget.setGeometry(QtCore.QRect(260, 50, 621, 511))
        self.dataTabWidget.setObjectName("dataTabWidget")
        self.dataTabWidget.setTabsClosable(True)
        self.main_window_controller.set_data_tab_widget(self.dataTabWidget)

        # ref table deo
        self.refLabel = QtWidgets.QLabel(self.centralwidget)
        self.refLabel.setText("Referenced Tables:")
        self.refLabel.setObjectName("RefLabel")
        self.refLabel.setGeometry(QtCore.QRect(10, 570, 150, 25))
        self.refLabel.setVisible(False)

        # self.refTablesViewer = RefTablesViewer(self.centralwidget)
        # self.refTablesViewer.setGeometry(QtCore.QRect(5, 585, 865, 380))
        # self.refTablesViewer.setContentsMargins(0, 0, 0, 0)
        # self.refTablesViewer.setVisible(False)

        MainWindow.setCentralWidget(self.centralwidget)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)
        self.databasesTabWidget.setCurrentIndex(0)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

        # connections
        self.connectMySQLDBPushButton.clicked.connect(lambda x: self.main_window_controller.load_and_connect_mysql_db(self.mySQLTreeWidget, self.statusbar))
        self.deleteMySQLDBPushButton.clicked.connect(lambda x: self.main_window_controller.delete_selected_mysql_database(self.mySQLTreeWidget, self.statusbar))
        self.createMySQLDBPushButton.clicked.connect(lambda x: self.main_window_controller.create_mysql_database(self.newMySQLNameLineEdit, self.mySQLTreeWidget, self.statusbar))
        
        self.mySQLTreeWidget.itemDoubleClicked.connect(lambda y, x: self.main_window_controller.add_mysql_table_tab(y, x, self.dataTabWidget, self.statusbar, self.CRUDActionsViewer))
        self.dataTabWidget.tabCloseRequested.connect(lambda x: self.main_window_controller.close_tab(x, self.dataTabWidget))
        
        #Mongo connections and actions on databases
        self.transformButton.clicked.connect(lambda x: self.main_window_controller.transform_from_sql_to_mongo(self.mongoDBTreeWidget, self.statusbar))
        
        self.connectmongoDBPushButton.clicked.connect(lambda x: self.main_window_controller.load_and_connect_mongodb(self.mongoDBTreeWidget, self.statusbar))

        self.deleteMongoDBPushButton.clicked.connect(lambda x: self.main_window_controller.delete_selected_mongodb(self.mongoDBTreeWidget, self.statusbar))
        self.createMongoDBPushButton.clicked.connect(lambda x: self.main_window_controller.create_mongo_database(self.newMongoNameLineEdit, self.mongoDBTreeWidget, self.statusbar))
   
        self.mongoDBTreeWidget.itemDoubleClicked.connect(lambda y, x: self.main_window_controller.add_mongo_table_tab(y, x, self.dataTabWidget, self.statusbar))

        # Za sve
        self.dataTabWidget.currentChanged.connect(lambda x: self.main_window_controller.change_tab_controller_for_CRUDActionViewer(x, self.dataTabWidget, self.CRUDActionsViewer))
        self.dataTabWidget.currentChanged.connect(lambda x: self.main_window_controller.show_mysql_ref_tables(x, self.dataTabWidget, self.refTablesViewer, self.refLabel, MainWindow, self.statusbar, self.CRUDActionsViewer))


    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "PolyInf"))

        self.connectMySQLDBPushButton.setText(_translate("MainWindow", "Connect Database"))
        self.connectmongoDBPushButton.setText(_translate("MainWindow", "Connect Mongo"))
        self.transformButton.setText(_translate("MainWindow", "TransformToMongo"))
        self.deleteMySQLDBPushButton.setText(_translate("MainWindow", "Delete Selected Database"))
        self.deleteMongoDBPushButton.setText(_translate("MainWindow", "Delete Selected MongoDB"))
        self.newMySQLNameLineEdit.setPlaceholderText(_translate("MainWindow", "New Database Name"))
        self.newMongoNameLineEdit.setPlaceholderText(_translate("MainWindow", "New MongoDB Name"))
        self.createMySQLDBPushButton.setText(_translate("MainWindow", "Create"))
        self.createMongoDBPushButton.setText(_translate("MainWindow", "Create"))
        self.databasesTabWidget.setTabText(self.databasesTabWidget.indexOf(self.mysqlTab), _translate("MainWindow", "MySQL"))
        self.databasesTabWidget.setTabText(self.databasesTabWidget.indexOf(self.mongoTab), _translate("MainWindow", "MongoDB"))
        self.databasesTabWidget.setTabText(self.databasesTabWidget.indexOf(self.arangoTab), _translate("MainWindow", "ArangoDB"))

# if __name__ == "__main__":
#     import sys
#     app = QtWidgets.QApplication(sys.argv)
#     MainWindow = QtWidgets.QMainWindow()
#     ui = MainWindowViewer()
#     ui.setupUi(MainWindow)
#     MainWindow.show()
#     sys.exit(app.exec_())
