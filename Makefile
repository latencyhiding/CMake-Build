SHELL=/bin/bash

BUILD_DIR?=bin
BUILD_UNIT_TESTS?="false"

TARGETS=win32 win64 unix

.SILENT:
.PHONY: $(TARGETS) clean all

unix:
	./plat_build -p unix -b $(BUILD_DIR) -u $(BUILD_UNIT_TESTS)

win64:
	./plat_build -p win64 -t '/home/mxe/usr/x86_64-w64-mingw32.static/share/cmake/mxe-conf.cmake' -b $(BUILD_DIR) -u $(BUILD_UNIT_TESTS)

win32:
	./plat_build -p win32 -t '/home/mxe/usr/i686-w64-mingw32.static/share/cmake/mxe-conf.cmake' -b $(BUILD_DIR) -u $(BUILD_UNIT_TESTS)

clean:
	rm -rf bin/*

all: $(TARGETS)
