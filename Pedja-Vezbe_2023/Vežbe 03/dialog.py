from dialog_select import DialogSelect
from PyQt5 import QtWidgets
import mysql_functions
import spec
from functools import partial


class Dialog(QtWidgets.QDialog):
    def __init__(self, db_name, table_name, data, mode, parent=None):
        super().__init__(parent=parent)

        self.new = None

        mysql_spec = spec.load_spec()
        table_spec = {}
        if table_name in mysql_spec.keys():
            table_spec = mysql_spec[table_name]

        columns = [column[0]
                   for column in mysql_functions.show_columns(db_name, table_name)]
        self.db_name = db_name
        self.table_name = table_name
        self.columns = columns

        self.search_results = []

        self.setWindowTitle("Dialog")

        QBtn = QtWidgets.QDialogButtonBox.Ok | QtWidgets.QDialogButtonBox.Cancel

        """ self.buttonBox = QtWidgets.QDialogButtonBox(QBtn)
        self.buttonBox.accepted.connect(self.accept)
        self.buttonBox.rejected.connect(self.reject) """

        self.layout = QtWidgets.QVBoxLayout()
        """ message = QtWidgets.QLabel("Message")
        self.layout.addWidget(message) """

        self.texts = []

        for column in columns:
            self.horizontalLayout = QtWidgets.QHBoxLayout()
            self.horizontalLayout.setObjectName("horizontalLayout")
            self.label = QtWidgets.QLabel(self)
            self.label.setObjectName(column)
            self.label.setText(column)
            self.horizontalLayout.addWidget(self.label)
            self.lineEdit = QtWidgets.QLineEdit(self)
            self.lineEdit.setObjectName(column+"LineEdit")
            self.horizontalLayout.addWidget(self.lineEdit)
            self.texts.append(self.lineEdit)

            if column in table_spec.keys():
                self.selectButton = QtWidgets.QPushButton(self)
                self.selectButton.setObjectName(column+"SelectButton")
                self.selectButton.setText("Select")
                self.selectButton.clicked.connect(partial(self.select, table_spec[column], column))
                self.horizontalLayout.addWidget(self.selectButton)
                self.newButton = QtWidgets.QPushButton(self)
                self.newButton.setObjectName(column+"NewButton")
                self.newButton.setText("New")
                self.newButton.clicked.connect(partial(self.new_dialog, table_spec[column], column))
                self.horizontalLayout.addWidget(self.newButton)
                
            self.layout.addLayout(self.horizontalLayout)

        self.button = QtWidgets.QPushButton(self)

        if mode == "update":
            for i, t in enumerate(self.texts):
                t.setText(str(data[i]))
            self.button.setObjectName("updateButton")
            self.button.setText("Update")
            self.button.clicked.connect(self.update)
        elif mode == "insert":
            self.button.setObjectName("insertButton")
            self.button.setText("Insert")
            self.button.clicked.connect(self.insert)
        elif mode == "search":
            self.button.setObjectName("searchButton")
            self.button.setText("Search")
            self.button.clicked.connect(self.search)
        elif mode == "new":
            self.button.setObjectName("insertButton")
            self.button.setText("Insert")
            self.button.clicked.connect(partial(self.insert_new, data))

        self.layout.addWidget(self.button)

        # self.layout.addWidget(self.buttonBox)
        self.setLayout(self.layout)

    def insert(self):
        values = tuple([text.text().strip() for text in self.texts])
        mysql_functions.insert(
            self.db_name, self.table_name, self.columns, values)
        self.clear_all()

    def update(self):
        values = tuple([text.text().strip() for text in self.texts])
        mysql_functions.update(
            self.db_name, self.table_name, self.columns, values)
        self.close()

    def clear_all(self):
        for t in self.texts:
            t.clear()

    def search(self):
        values = tuple([text.text().strip() for text in self.texts])
        results = mysql_functions.search(
            self.db_name, self.table_name, self.columns, values)
        self.search_results = [result for result in results]
        self.close()

    def get_search_results(self):
        return self.search_results

    def select(self, table_name, column):
        dlg = DialogSelect(self.db_name, table_name, column)
        closed = dlg.exec()
        if not closed:
            selected = dlg.get_selected()
            self.texts[self.columns.index(column)].setText(selected)

    def new_dialog(self, table_name, column):
        dlg = Dialog(self.db_name, table_name, column, "new")
        closed = dlg.exec()
        if not closed:
            new = dlg.get_new()
            self.texts[self.columns.index(column)].setText(new)

    def insert_new(self, column):
        self.new = self.texts[self.columns.index(column)].text().strip()
        self.insert()
        self.close()

    def get_new(self):
        return self.new
