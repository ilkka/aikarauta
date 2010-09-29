#include "mainwindow.h"
#include "ui_mainwindow.h"

#include <QDeclarativeItem>
#include <QResizeEvent>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    ui->qmlview->setSource(QUrl("qrc:///aikarauta/qml/main.qml"));
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::changeEvent(QEvent *e)
{
    QMainWindow::changeEvent(e);
    switch (e->type()) {
    case QEvent::LanguageChange:
        ui->retranslateUi(this);
        break;
    default:
        break;
    }
}

void MainWindow::resizeEvent(QResizeEvent *e)
{
    QDeclarativeItem* o = static_cast<QDeclarativeItem*>(ui->qmlview->rootObject());
    if (o) {
        o->setSize(e->size());
    }
}
