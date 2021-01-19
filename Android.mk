ifneq ($(filter Moaan_SR9,$(TARGET_DEVICE)),)
LOCAL_PATH := device/Allwinner/Moaan_SR9
include $(call all-makefiles-under,$(LOCAL_PATH))
endif