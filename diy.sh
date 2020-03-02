#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.199.1/g' package/base-files/files/bin/config_generate
rm -rf package/lean/luci-theme-argon
git clone https://github.com/sypopo/luci-theme-atmaterial.git package/lean/luci-theme-atmaterial
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap