HEADERS += \
    tools.h

SOURCES += \
    tools.cpp
TEMPLATE=lib
TARGET=tools
CONFIG += static
unix{
    QMAKE_CXXFLAGS+="--std=c++11"
    target.path = /root/repo-github/res/common/lib-linux32
    INSTALLS += target
}
win32{
  target.path = Z:\res\common\lib-win32
    INSTALLS += target

}
