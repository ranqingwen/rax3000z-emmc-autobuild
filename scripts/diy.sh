#!/bin/bash

#更改默认地址为192.168.23.254
sed -i 's/192.168.1.1/192.168.23.254/g' package/base-files/files/bin/config_generate

# 个性签名,默认增加年月日[$(TZ=UTC-8 date "+%Y.%m.%d")]
export Customized_Information="Openwrt/Immortalwrt by ranqw $(TZ=UTC-8 date "+%Y.%m.%d")"  # 个性签名,你想写啥就写啥，(填0为不作修改)

# 整理固件包时候,删除您不想要的固件或者文件,让它不需要上传到Actions空间(根据编译机型变化,自行调整删除名称)
cat >"$CLEAR_PATH" <<-EOF
config.buildinfo
feeds.buildinfo
immortalwrt-mediatek-mt7981.manifest
profiles.json
sha256sums
version.buildinfo
Source code
EOF
