APP_PLATFORM := android-9
APP_ABI := armeabi armeabi-v7a x86
NDK_TOOLCHAIN_VERSION := 4.8
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libtmessages
LOCAL_CFLAGS := -w -std=gnu99 -O3
LOCAL_LDLIBS := -llog
LOCAL_LDFLAGS := -ldl

LOCAL_SRC_FILES :=  \
./aes_core.c \
./aes_ige.c \
./aes_misc.c \
./jni.c \
./sqlite3.c \
./org_telegram_SQLite_SQLiteCursor.c \
./org_telegram_SQLite_SQLiteDatabase.c \
./org_telegram_SQLite_SQLitePreparedStatement.c \
./org_telegram_SQLite.c

 
include $(BUILD_SHARED_LIBRARY)