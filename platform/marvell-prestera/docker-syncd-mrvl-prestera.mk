# docker image for mrvl syncd

DOCKER_SYNCD_PLATFORM_CODE = mrvl-prestera
include $(PLATFORM_PATH)/../template/docker-syncd-bookworm.mk

$(DOCKER_SYNCD_BASE)_DEPENDS += $(SYNCD)
$(DOCKER_SYNCD_BASE)_DEPENDS += $(MRVL_SAI)

$(DOCKER_SYNCD_BASE)_DBG_DEPENDS += $(SYNCD_DBG) \
                                $(LIBSWSSCOMMON_DBG) \
                                $(LIBSAIMETADATA_DBG) \
                                $(LIBSAIREDIS_DBG)

$(DOCKER_SYNCD_BASE)_VERSION = 1.0.0
$(DOCKER_SYNCD_BASE)_PACKAGE_NAME = syncd
$(DOCKER_SYNCD_BASE)_MACHINE = marvell-prestera

$(DOCKER_SYNCD_BASE)_RUN_OPT += -v /host/warmboot:/var/warmboot
