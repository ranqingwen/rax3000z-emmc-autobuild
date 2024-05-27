#!/bin/bash

#更改默认地址为192.168.23.254
sed -i 's/192.168.1.1/192.168.23.254/g' package/base-files/files/bin/config_generate

# 个性签名,默认增加年月日[$(TZ=UTC-8 date "+%Y.%m.%d")]
export Customized_Information="Openwrt/Immortalwrt by ranqw $(TZ=UTC-8 date "+%Y.%m.%d")"  # 个性签名,你想写啥就写啥，(填0为不作修改)
