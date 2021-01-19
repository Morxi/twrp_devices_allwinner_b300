ifneq ($(filter Moaan-SR9,$(TARGET_DEVICE)),)
LOCAL_PATH := device/Allwinner/Moaan-SR9
include $(call all-makefiles-under,$(LOCAL_PATH))
endif