#include "mainwindow.h"
//#include "ui_testform2.h"
#include "ui_form.h"
MainWindow::MainWindow(QWidget *parent) : QMainWindow(parent)
{
    QWidget *w=new QWidget;
    this->setCentralWidget(w);
    Ui::Form *f=new  Ui::Form ;
    f->setupUi(w);
}

