LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:=			\
	intel_bufmgr.c			\
	intel_bufmgr_fake.c		\
	intel_bufmgr_gem.c		\
	mm.c

LOCAL_C_INCLUDES +=			\
	$(LOCAL_PATH)/..		\
	$(LOCAL_PATH)			\
	$(LOCAL_PATH)/../../shared-core

LOCAL_MODULE:= libdrm_intel

LOCAL_SHARED_LIBRARIES:= libdrm

include $(BUILD_SHARED_LIBRARY)
