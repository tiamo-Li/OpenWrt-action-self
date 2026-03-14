#!/bin/bash

# Modify default IP
# sed -i 's/192.168.1.1/192.168.188.1/g' package/base-files/files/bin/config_generate

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname and time zones
sed -i 's/OpenWrt/Cudy/g' package/base-files/files/bin/config_generate
sed -i 's/UTC/Asia\/Shanghai/g' package/base-files/files/bin/config_generate

# add Argon theme
git clone https://github.com/jerrykuku/luci-theme-argon.git ./package/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config.git ./package/luci-app-argon-config

# add shadowsocks-libev
# git clone https://github.com/shadowsocks/luci-app-shadowsocks.git ./package/luci-app-shadowsocks
# pushd package/luci-app-shadowsocks/tools/po2lmo
# make && sudo make install
# popd


# 解决rust编译时llvm在CI环境下载失败的问题
sed -i 's|--set=llvm.download-ci-llvm=true|--set=llvm.download-ci-llvm=false|g' feeds/packages/lang/rust/Makefile