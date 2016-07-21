TEMPLATE = subdirs

SUBDIRS += helloworld
SUBDIRS += postcollector
SUBDIRS += basic-server

equals(ENABLE_QHTTP_CLIENT, "1") {
    SUBDIRS += keep-alive
}

