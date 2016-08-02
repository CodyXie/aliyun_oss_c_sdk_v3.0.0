LOCAL_PATH:=$(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../third_party/include \
	$(LOCAL_PATH)/../third_party/include/mxml \
	$(LOCAL_PATH)/../third_party/include/apr-1 \

LOCAL_SRC_FILES := \
    aos_buf.c \
    aos_fstack.c \
    aos_http_io.c \
    aos_log.c \
    aos_status.c \
    aos_string.c \
    aos_transport.c \
    aos_util.c \
    oss_auth.c \
    oss_bucket.c \
    oss_define.c \
    oss_multipart.c \
    oss_object.c \
    oss_util.c \
    oss_xml.c

LOCAL_SHARED_LIBRARIES := libdl libc libmxml libiconv libapr libapr-util libcurl
LOCAL_CFLAGS := -O2 -pthread -U__LP64__ -DHAVE_CONFIG_H -DLINUX -D_REENTRANT -D_GNU_SOURCE
LOCAL_MODULE := liboss
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := Cody

include $(BUILD_SHARED_LIBRARY)
