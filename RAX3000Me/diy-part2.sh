#!/bin/bash

# Modify or update Proxy Core
rm -rf ./feeds/packages/net/{xray-core,v2ray-plugin,v2ray-geodata,sing-box}
mv ./feeds/passwall_packages/xray-core ./feeds/packages/net/
mv ./feeds/passwall_packages/v2ray-plugin ./feeds/packages/net/
mv ./feeds/passwall_packages/v2ray-geodata ./feeds/packages/net/
mv ./feeds/passwall_packages/sing-box ./feeds/packages/net/
rm -rf ./feeds/packages/lang/golang
git clone https://github.com/kenzok8/golang ./feeds/packages/lang/golang
