ifeq ($(call my-dir),$(call project-path-for,qcom-audio))

ifneq ($(filter msm8960 msm8226 msm8x26 msm8660 msm8974 msm8x74,$(TARGET_BOARD_PLATFORM)),)

MY_LOCAL_PATH := $(call my-dir)

ifeq ($(BOARD_USES_LEGACY_ALSA_AUDIO),true)
include $(MY_LOCAL_PATH)/legacy/Android.mk
else
include $(MY_LOCAL_PATH)/hal/Android.mk
endif

endif

endif
