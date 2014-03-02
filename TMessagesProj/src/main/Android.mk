LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_JNI_SHARED_LIBRARIES := libtmessages

LOCAL_STATIC_JAVA_LIBRARIES := \
        android-support-v4 \
        android-support-v7-appcompat \
        play

LOCAL_ASSET_DIR := \
        $(LOCAL_PATH)/assets

LOCAL_SRC_FILES := \
        $(call all-java-files-under, java)

LOCAL_RESOURCE_DIR := \
        $(LOCAL_PATH)/res \
        frameworks/support/v7/appcompat/res \
        external/google/google_play_services/libproject/google-play-services_lib/res

# Needed to expose library resource files
LOCAL_AAPT_FLAGS := \
        --auto-add-overlay \
        --extra-packages android.support.v7.appcompat \
        --extra-packages com.google.android.gms

LOCAL_PACKAGE_NAME := Telegram
LOCAL_MODULE_TAGS := optional
LOCAL_SDK_VERSION := current

include $(BUILD_PACKAGE)

include $(CLEAR_VARS)
# UNCOMMENT in case you didnt declare it somewhere before
#LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := \
#    play:../../../external/google/google_play_services/libproject/google-play-services_lib/libs/google-play-services.jar
#
#include $(BUILD_MULTI_PREBUILT)

include $(call all-makefiles-under,$(LOCAL_PATH))
