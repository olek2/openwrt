# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2010 OpenWrt.org

I2C_LANTIQ_MODULES:= \
  CONFIG_I2C_LANTIQ:drivers/i2c/busses/i2c-lantiq

define KernelPackage/i2c-lantiq
  TITLE:=Lantiq I2C controller
  $(call i2c_defaults,$(I2C_LANTIQ_MODULES),52)
  DEPENDS:=+kmod-i2c-core @TARGET_lantiq_falcon
endef

define KernelPackage/i2c-lantiq/description
  Kernel support for the Lantiq/Falcon I2C controller
endef

$(eval $(call KernelPackage,i2c-lantiq))

define KernelPackage/switch-lantiq-gswip
  SUBMENU:=$(NETWORK_DEVICES_MENU)
  TITLE:=Lantiq xRx200/xRx300 switch support
  KCONFIG:=CONFIG_NET_DSA_LANTIQ_GSWIP
  FILES:=$(LINUX_DIR)/drivers/net/dsa/lantiq_gswip.ko
  AUTOLOAD:=$(call AutoLoad,42,lantiq_gswip)
endef

define KernelPackage/switch-lantiq-gswip/description
 Lantiq xRx200/xRx300 switch support
endef

$(eval $(call KernelPackage,switch-lantiq-gswip))

