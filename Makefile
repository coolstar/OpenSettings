ARCHS = armv7 arm64
include theos/makefiles/common.mk

APPLICATION_NAME = OpenSettings
OpenSettings_LOGOSFLAGS = -c generator=internal
OpenSettings_FILES = main.m Fix.xm
#OpenSettings_CODESIGN_FLAGS = -SEntitlements.plist
#Entitlements doesn't seem to work for some reason

include $(THEOS_MAKE_PATH)/application.mk
