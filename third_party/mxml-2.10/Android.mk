LOCAL_PATH:=$(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    mxml-search.c \
    mxml-entity.c \
    mxml-string.c \
    mxmldoc.c \
    mxml-index.c \
    mxml-get.c \
    mxml-file.c \
    mxml-node.c \
    mxml-set.c \
    mxml-private.c \
    mxml-attr.c


LOCAL_CFLAGS := -fPIC -Os -g  -Wall -D_THREAD_SAFE -D_REENTRANT
LOCAL_MODULE := libmxml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := Cody

include $(BUILD_SHARED_LIBRARY)
