SHELL=/bin/bash

BUILD_DIR?=bin
BUILD_UNIT_TESTS?="false"

TARGETS=win32 win64 unix

include toolchains

.SILENT:
.PHONY: $(TARGETS) clean all

unix:
	./plat_build -p unix -b $(BUILD_DIR) -u $(BUILD_UNIT_TESTS)

win64:
	./plat_build -p win64 -t ${CMAKE_WIN_X86_64_TOOLCHAIN_FILE} -b $(BUILD_DIR) -u $(BUILD_UNIT_TESTS)

win32:
	./plat_build -p win32 -t ${CMAKE_WIN_I686_TOOLCHAIN_FILE} -b $(BUILD_DIR) -u $(BUILD_UNIT_TESTS)

clean:
	rm -rf bin/*

all: $(TARGETS)
