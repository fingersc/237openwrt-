#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#删除部分原软件包，以保证可以后续添加的软件包可以被编译
rm -rf feeds/packages/net/smartdns
rm -rf feeds/luci/applications/luci-app-smartdns
#添加额外软件包
git clone https://github.com/immortalwrt/packages/tree/master/net/smartdns.git package/smartdns
git clone https://github.com/immortalwrt/luci/tree/master/applications/luci-app-smartdns.git package/luci-app-smartdns

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
