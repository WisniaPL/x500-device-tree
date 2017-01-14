ifeq ($(TARGET_DEVICE),x500)

LOCAL_PATH := $(my-dir)

include $(CLEAR_VARS)

LOCAL_CFLAGS += $(LIBLOG_CFLAGS)
LOCAL_MODULE := libxlog
LOCAL_SRC_FILES := xlog.c mtkaudio.cpp mtkcamhack.cpp
LOCAL_C_INCLUDES += frameworks/av/media/mtp/ system/core/include/ frameworks/rs/server/ frameworks/av/include/ hardware/libhardware/include/
LOCAL_SHARED_LIBRARIES := libcutils liblog libutils libbinder

include $(BUILD_SHARED_LIBRARY)

endif
