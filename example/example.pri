equals(ENABLE_QHTTP_CLIENT, "1") {
    DEFINES *= QHTTP_HAS_CLIENT
}

CONFIG       += c++11 c++14

INCLUDEPATH  += $$PWD/../include

win32-msvc* {
    DEFINES  *= QHTTP_EXPORT

    CONFIG(debug, debug|release) {
        LIBS += $$OUT_PWD/../../src/debug/qhttp.lib
    }

    CONFIG(release, release|debug) {
        LIBS += $$OUT_PWD/../../src/release/qhttp.lib
    }
}

unix {
    LIBS     += $$OUT_PWD/../../src/libqhttp.a

}
