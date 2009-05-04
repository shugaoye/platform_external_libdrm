LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:=			\
	xf86drm.c			\
	xf86drmHash.c			\
	xf86drmRandom.c			\
	xf86drmSL.c			\
	xf86drmMode.c

LOCAL_C_INCLUDES +=			\
	$(LOCAL_PATH)/../shared-core

LOCAL_MODULE:= libdrm

include $(BUILD_SHARED_LIBRARY)

include $(call all-makefiles-under,$(LOCAL_PATH))
