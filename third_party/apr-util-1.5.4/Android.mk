LOCAL_PATH:=$(call my-dir)

#    tools/gen_test_char.c 
include $(CLEAR_VARS)

LOCAL_C_INCLUDES := \
	external/expat/lib \
	external/sqlite/dist \
	external/aliyun_oss_c_sdk_v3.0.0/third_party/libiconv-1.14/include \
	external/aliyun_oss_c_sdk_v3.0.0/third_party/include/apr-1 \
	external/aliyun_oss_c_sdk_v3.0.0/third_party/apr-util-1.5.4/include \
	external/aliyun_oss_c_sdk_v3.0.0/third_party/apr-util-1.5.4/include/private

LOCAL_SRC_FILES := \
    buckets/apr_brigade.c \
    buckets/apr_buckets.c \
    buckets/apr_buckets_alloc.c \
    buckets/apr_buckets_eos.c \
    buckets/apr_buckets_file.c \
    buckets/apr_buckets_flush.c \
    buckets/apr_buckets_heap.c \
    buckets/apr_buckets_mmap.c \
    buckets/apr_buckets_pipe.c \
    buckets/apr_buckets_pool.c \
    buckets/apr_buckets_refcount.c \
    buckets/apr_buckets_simple.c \
    buckets/apr_buckets_socket.c \
    crypto/apr_crypto.c \
    crypto/apr_md4.c \
    crypto/apr_md5.c \
    crypto/apr_passwd.c \
    crypto/apr_sha1.c \
    crypto/crypt_blowfish.c \
    crypto/getuuid.c \
    crypto/uuid.c \
    dbd/apr_dbd.c \
    dbm/apr_dbm.c \
    dbm/apr_dbm_sdbm.c \
    dbm/sdbm/sdbm.c \
    dbm/sdbm/sdbm_hash.c \
    dbm/sdbm/sdbm_lock.c \
    dbm/sdbm/sdbm_pair.c \
    encoding/apr_base64.c \
    hooks/apr_hooks.c \
    ldap/apr_ldap_stub.c \
    ldap/apr_ldap_url.c \
    memcache/apr_memcache.c \
    misc/apr_date.c \
    misc/apr_queue.c \
    misc/apr_reslist.c \
    misc/apr_rmm.c \
    misc/apr_thread_pool.c \
    misc/apu_dso.c \
    misc/apu_version.c \
    strmatch/apr_strmatch.c \
    uri/apr_uri.c \
    xlate/xlate.c \
    xml/apr_xml.c \
    dbd/apr_dbd_sqlite3.c \

LOCAL_SHARED_LIBRARIES := libdl libc libexpat libiconv libsqlite libapr
LOCAL_CFLAGS := -O2 -pthread -U__LP64__ -DHAVE_CONFIG_H -DLINUX -D_REENTRANT -D_GNU_SOURCE
LOCAL_MODULE := libapr-util
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := Cody

include $(BUILD_SHARED_LIBRARY)
