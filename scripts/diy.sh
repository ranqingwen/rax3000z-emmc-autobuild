#!/bin/bash

#更改默认地址为192.168.23.254
sed -i 's/192.168.1.1/192.168.23.254/g' package/base-files/files/bin/config_generate
