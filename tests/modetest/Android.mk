LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:=				\
	modetest.c

LOCAL_C_INCLUDES +=				\
	$(LOCAL_PATH)/../../shared-core		\
	$(LOCAL_PATH)/../../libdrm/intel	\
	$(LOCAL_PATH)/../../libdrm

LOCAL_MODULE:= modetest

LOCAL_SHARED_LIBRARIES:=			\
	libdrm					\
	libdrm_intel

include $(BUILD_EXECUTABLE)
