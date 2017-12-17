#include "mainwindow.h"
#include <QApplication>
#include <mutex>
#include "tools.h"
//#include "ui_form.h"


int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    prt(info,"main start");

    MainWindow w;//make sure that no delay in constraction
  //  w.setWindowTitle(QString("pd"));
    w.setWindowTitle(QString::fromLocal8Bit("行人检测"));
   //  w.setWindowTitle("行人检测");
    //  w.setWindowFlags(Qt::WindowFullScreen);
    //  w.setWindowState(Qt::WindowFullScreen);
 //   w.setWindowState(Qt::WindowMaximized);
    w.show();

    return a.exec();
}
