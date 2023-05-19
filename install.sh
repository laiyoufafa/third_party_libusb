#!/bin/bash
# Copyright (C) 2023 Huawei Device Co., Ltd.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -e
cd $1
if [ -d "darwin" ];then
    rm -rf darwin
fi
if [ -d "linux" ];then
    rm -rf linux
fi
if [ -d "windows" ];then
    rm -rf windows
fi
patch -p1 < add_config_h.patch
if [ -d "libusb-1.0.26" ];then
    rm -rf libusb-1.0.26
fi
tar jxvf libusb-1.0.26.tar.bz2
exit 0