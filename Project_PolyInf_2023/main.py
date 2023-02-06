from PyQt5 import QtWidgets
from gui.view.application import MainWindowViewer


# Pokretanje aplikacije samo ako je pokrenut glavni modul
if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    MainWindow = QtWidgets.QMainWindow()
    ui = MainWindowViewer()
    ui.setupUi(MainWindow)
    MainWindow.show()
    sys.exit(app.exec_())