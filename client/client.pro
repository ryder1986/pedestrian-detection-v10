include(../pedestrian.pri)
QT       += core gui network opengl
HEADERS += \
    mainwindow.h \
    tools.h
#/media/sf_E_DRIVE/projects/repo-github/pedestrian-detection-v10/build/linux32/ui_testform2.h
#UI_DIR =/media/sf_E_DRIVE/projects/repo-github/pedestrian-detection-v10/build/linux32/

SOURCES += \
    mainwindow.cpp \
    main.cpp
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
    $$COMMON_LIB_PATH/libtools.a
}
win32{
    INCLUDEPATH +="$$CVPATH/cv/opencv-vs2013-x86/include" \
    $$COMMON_INCLUDE_PATH
    LIBS+= \
    -L$$COMMON_LIB_PATH/ -ltools
}


win32{
INCLUDEPATH +="$$CVPATH\cv\opencv-vs2013-x86\include"
CONFIG(debug, debug|release){
#message("debug mode ")
LIBS+=-L$$CVPATH\cv\opencv-vs2013-x86\lib -lopencv_core249d -lopencv_highgui249d -lopencv_objdetect249d -lopencv_imgproc249d -lopencv_ml249d -lopencv_video249d
}else{
LIBS+=-L$$CVPATH\cv\opencv-vs2013-x86\lib -lopencv_core249 -lopencv_highgui249 -lopencv_objdetect249 -lopencv_imgproc249 -lopencv_ml249 -lopencv_video249
#message("release mode ")
}
}


message(libpath---->:$$COMMON_INCLUDE_PATH)
