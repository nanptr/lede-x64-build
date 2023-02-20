#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# Add adguardhome 
#svn export https://github.com/kenzok8/openwrt-packages/trunk/luci-app-adguardhome package/luci-app-adguardhome
git clone --depth 1 https://github.com/kongfl888/luci-app-adguardhome package/luci-app-adguardhome

# Add luci-app-ssr-plus
git clone https://github.com/fw876/helloworld package/luci-app-ssr-plus

# Add luci-app-openclash
svn export https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
