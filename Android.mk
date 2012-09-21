ifeq ($(strip $(BOARD_USES_WRS_OMXIL_CORE)),true)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_COPY_HEADERS_TO := khronos/openmax
LOCAL_COPY_HEADERS := \
    core/inc/khronos/openmax/include/OMX_Audio.h \
    core/inc/khronos/openmax/include/OMX_Component.h \
    core/inc/khronos/openmax/include/OMX_ContentPipe.h \
    core/inc/khronos/openmax/include/OMX_Core.h \
    core/inc/khronos/openmax/include/OMX_IVCommon.h \
    core/inc/khronos/openmax/include/OMX_Image.h \
    core/inc/khronos/openmax/include/OMX_Index.h \
    core/inc/khronos/openmax/include/OMX_IndexExt.h \
    core/inc/khronos/openmax/include/OMX_IntelErrorTypes.h \
    core/inc/khronos/openmax/include/OMX_Other.h \
    core/inc/khronos/openmax/include/OMX_Types.h \
    core/inc/khronos/openmax/include/OMX_Video.h \
    core/inc/khronos/openmax/include/OMX_VideoExt.h
include $(BUILD_COPY_HEADERS)

include $(CLEAR_VARS)
LOCAL_COPY_HEADERS_TO := wrs_omxil_core
LOCAL_COPY_HEADERS := \
    base/inc/cmodule.h \
    base/inc/componentbase.h \
    base/inc/portaudio.h \
    base/inc/portbase.h \
    base/inc/portimage.h \
    base/inc/portother.h \
    base/inc/portvideo.h \
    utils/inc/audio_parser.h \
    utils/inc/list.h \
    utils/inc/log.h \
    utils/inc/module.h \
    utils/inc/queue.h \
    utils/inc/thread.h \
    utils/inc/workqueue.h
include $(BUILD_COPY_HEADERS)

include $(CLEAR_VARS)

WRS_OMXIL_CORE_ROOT := $(LOCAL_PATH)

COMPONENT_SUPPORT_BUFFER_SHARING := false
COMPONENT_SUPPORT_OPENCORE := false

# core
-include $(WRS_OMXIL_CORE_ROOT)/core/src/Android.mk

# base class
-include $(WRS_OMXIL_CORE_ROOT)/base/src/Android.mk

# utility
-include $(WRS_OMXIL_CORE_ROOT)/utils/src/Android.mk

endif
