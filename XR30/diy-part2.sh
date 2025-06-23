#!/bin/bash

# Modify Device Tree
git clone https://github.com/tiamo-Li/cmcc-xr30.git
mv ./cmcc-xr30/target/linux/mediatek/dts/mt7981b-cmcc-xr30.dts ./target/linux/mediatek/dts/mt7981b-cmcc-xr30.dts
mv ./cmcc-xr30/target/linux/mediatek/dts/mt7981b-cmcc-xr30.dtsi ./target/linux/mediatek/dts/mt7981b-cmcc-xr30.dtsi
mv ./cmcc-xr30/target/linux/mediatek/filogic/base-files/etc/board.d/02_network ./target/linux/mediatek/filogic/base-files/etc/board.d/02_network
mv ./cmcc-xr30/target/linux/mediatek/image/filogic.mk ./target/linux/mediatek/image/filogic.mk
rm -rf ./cmcc-xr30/

# Modify or update Proxy Core
rm -rf ./feeds/packages/net/{xray-core,v2ray-plugin,v2ray-geodata,sing-box}
mv ./feeds/passwall_packages/xray-core ./feeds/packages/net/
mv ./feeds/passwall_packages/v2ray-plugin ./feeds/packages/net/
mv ./feeds/passwall_packages/v2ray-geodata ./feeds/packages/net/
mv ./feeds/passwall_packages/sing-box ./feeds/packages/net/
rm -rf ./feeds/packages/lang/golang
git clone https://github.com/kenzok8/golang ./feeds/packages/lang/golang
