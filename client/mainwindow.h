#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

namespace Ui {
    class Form;
} // namespace Ui
class MainWindow : public QMainWindow
{
    Q_OBJECT
public:
    explicit MainWindow(QWidget *parent = 0);

signals:

public slots:
private slots:


private:
  Ui::Form *frm;
};

#endif // MAINWINDOW_H
