#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

cd openwrt
git clone https://github.com/jerrykuku/luci-theme-argon -b 19.07_stable ./package/feeds
git clone https://github.com/jefferymvp/luci-app-koolproxyR ./package
./scripts/feeds update -a
./scripts/feeds install -a

# 不要直接改源码，换一种方式，下面这些弃用
# sed -i 's/none/WPA/WPA2/a\set wireless.default_radio${devidx}.key=password/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# sed -i 's/none/WPA/WPA2/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# sed 's/WPA/WPA2/a\set wireless.default_radio${devidx}.key=password/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 调用diy目录下的文件，包括zzz-default-settings文件
cd openwrt
cp -Rf ../diy/* ./
