#!/bin/bash

# Add the feed source for passwall2
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git' >>feeds.conf.default
echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git' >>feeds.conf.default

# Add the feed source for OpenClash
# echo "src-git OpenClash https://github.com/vernesong/OpenClash" >> ./feeds.conf.default

# Add the feed source for helloworld
echo 'src-git helloworld https://github.com/fw876/helloworld.git' >>feeds.conf.default
