ifeq ($(TARGET_DEVICE),x500)

LOCAL_PATH := $(my-dir)

include $(CLEAR_VARS)


LOCAL_SHARED_LIBRARIES := liblog libcutils libgui libbinder libutils

LOCAL_SRC_FILES := \
    mtk_camera_shim.c

LOCAL_MODULE := mtkcam
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)

endif
