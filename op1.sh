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
echo 'src-git xd https://github.com/shiyu1314/onecloud-package' >>feeds.conf.default
echo 'src-git dns https://github.com/sbwml/luci-app-mosdns' >>feeds.conf.default
echo 'src-git istore https://github.com/linkease/istore;main' >> feeds.conf.default

sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default

svn co https://github.com/shiyu1314/openwrt-onecloud/trunk/target/linux/meson target/linux/meson

#echo 'src-git amlogic https://github.com/kenzok8/openwrt-packages/tree/master/luci-app-amlogic' >>feeds.conf.default
#echo 'src-git quickstart https://github.com/kenzok8/small-package/tree/main/luci-app-quickstart' >>feeds.conf.default
#echo 'src-git ssr-plus https://github.com/kenzok8/small-package/tree/main/luci-app-ssr-plus' >>feeds.conf.default

