# Copyright (C) 2016 Openwrt.org
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI support for wolplus From sundaqiang
LUCI_DEPENDS:=+etherwake
LUCI_PKGARCH:=all
PKG_VERSION:=1.1
PKG_RELEASE:=20230724
PKG_MAINTAINER:=sundaqiang

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature




# Copyright (C) 2016 Openwrt.org
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI support for wolplus From sundaqiang
LUCI_DEPENDS:=+etherwake
LUCI_PKGARCH:=all
PKG_VERSION:=1.1
PKG_RELEASE:=20230724
PKG_MAINTAINER:=sundaqiang

# Define the package name and source directory
LUCI_PACKAGE_NAME:=wolplus
LUCI_SRC_DIR:=$(PKG_BUILD_DIR)/src

# Add the path to your .po files
LUCI_PO_FILES:=$(TOPDIR)/package/your-plugin/po/zh-cn/wolplus.po

include $(TOPDIR)/feeds/luci/luci.mk

# Add this section to include .po files
define Package/$(LUCI_PACKAGE_NAME)/Install
    $(INSTALL_DIR) $(1)/usr/share/luci/locale/zh-cn
    $(INSTALL_DATA) $(LUCI_PO_FILES) $(1)/usr/share/luci/locale/zh-cn/
endef

# The build step should include installing translation files
define Build/Compile
    $(call Build/Compile/Luci)
endef

# Call BuildPackage with OpenWrt buildroot signature
$(eval $(call BuildPackage,$(LUCI_PACKAGE_NAME)))
