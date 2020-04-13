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
sed -i 's/root::0:0:99999:7:::/root:$1$PgqmDetr$xqXbP57ysPKh9m36oycQS:0:0:99999:7:::/g' package/base-files/files/etc/shadow

# 不要直接改源码，换一种方式，下面这些弃用
# sed -i 's/none/WPA/WPA2/a\set wireless.default_radio${devidx}.key=password/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# sed -i 's/none/WPA/WPA2/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# sed 's/WPA/WPA2/a\set wireless.default_radio${devidx}.key=password/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
