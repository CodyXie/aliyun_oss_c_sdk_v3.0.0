LOCAL_PATH:=$(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../third_party/include \
	$(LOCAL_PATH)/../third_party/include/mxml \
	$(LOCAL_PATH)/../third_party/include/curl \
	$(LOCAL_PATH)/../third_party/include/apr-1 \
	$(LOCAL_PATH)/../oss_c_sdk \

LOCAL_SRC_FILES := \
	oss_sample_util.c \
	oss_config.c \
	main.c \
	oss_put_object_sample.c \
	oss_append_object_sample.c \
	oss_get_object_sample.c \
	oss_head_object_sample.c \
	oss_delete_object_sample.c \
	oss_multipart_upload_sample.c

LOCAL_SHARED_LIBRARIES := libdl libc libmxml libiconv libapr libapr-util libcurl liboss
LOCAL_CFLAGS := -O2 -pthread -DLINUX -D_REENTRANT -D_GNU_SOURCE
LOCAL_MODULE := oss_sdk_sample
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := Cody

include $(BUILD_EXECUTABLE)
