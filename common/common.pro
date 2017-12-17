HEADERS += \
    tools.h

SOURCES += \
    tools.cpp
TEMPLATE=lib
TARGET=tools
unix{
    QMAKE_CXXFLAGS+="--std=c++11"
    target.path = /root/repo-github/res/common
    INSTALLS += target
}
