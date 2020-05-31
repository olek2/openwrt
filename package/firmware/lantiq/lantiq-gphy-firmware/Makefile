#
# Copyright (C) 2021 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=lantiq-gphy-firmware
PKG_RELEASE:=1
PKG_FLAGS:=nonshared

include $(INCLUDE_DIR)/package.mk

define Package/lantiq-gphy-firmware-defaults
  SECTION:=firmware
  CATEGORY:=Firmware
  DEPENDS:=@TARGET_lantiq_xrx200
  DEFAULT:=n
  TITLE:=$(1)
endef

define Package/xrx200-gphy-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/lantiq
	$(INSTALL_DATA) files/$(2) $(1)/lib/firmware/lantiq/$(3)
endef

define Package/xrx200-phy11g-firmware
  $(call Package/lantiq-gphy-firmware-defaults, xRx200 Gigabit Ethernet PHY Firmware)
endef

define Package/xrx200-phy11g-firmware/description
  This package contains firmware for Gigabit Ethernet PHY integrated in xRx200 SoC.
endef

define Package/xrx200-phy11g-firmware/install
  $(call Package/xrx200-gphy-firmware/install,$(1),xrx200_phy11g_a22.bin,xrx200_phy11g_a22.bin)
endef

define Package/xrx200-phy22f-firmware
  $(call Package/lantiq-gphy-firmware-defaults, xRx200 Fast Ethernet PHY Firmware)
endef

define Package/xrx200-phy22f-firmware/description
  This package contains firmware for Fast Ethernet PHY integrated in xRx200 SoC.
endef

define Package/xrx200-phy22f-firmware/install
  $(call Package/xrx200-gphy-firmware/install,$(1),xrx200_phy22f_a22.bin,xrx200_phy22f_a22.bin)
endef

define Build/Compile

endef

$(eval $(call BuildPackage,xrx200-phy11g-firmware))
$(eval $(call BuildPackage,xrx200-phy22f-firmware))
