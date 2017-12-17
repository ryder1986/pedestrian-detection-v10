include(../pedestrian.pri)
QT       += core gui network opengl
HEADERS += \
    mainwindow.h \
    tools.h
#/media/sf_E_DRIVE/projects/repo-github/pedestrian-detection-v10/build/linux32/ui_testform2.h
#UI_DIR =/media/sf_E_DRIVE/projects/repo-github/pedestrian-detection-v10/build/linux32/

SOURCES += \
    mainwindow.cpp \
    main.cpp \
    tools.cpp
INCLUDEPATH +=$$INCPATH
FORMS += \
  \
    form.ui

 QT += widgets
TEMPLATE = app
unix{
    DEFINES += IS_UNIX
    QMAKE_CXXFLAGS+="-std=c++11"
    INCLUDEPATH +="$$CVPATH/cv/opencv-249-linux32/include" \
    $$COMMON_INCLUDE_PATH
    LIBS+=-L$$CVPATH/cv/opencv-249-linux32/lib -lopencv_core -lopencv_highgui -lopencv_objdetect -lopencv_imgproc -lopencv_ml -lopencv_video -lX11 \
    -L$$COMMON_LIB_PATH/ -ltools
}
