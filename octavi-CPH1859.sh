#!/bin/bash
#
# This script is personal
# Make sure to make necessary changes
# 
# Copyright (C) 2020 RB INTERNATIONAL NETWORK
#
#            An Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

echo "<<<<< © The Devil >>>>>"

# Username
echo -e "\n================== Adding Username ==================\n"
git config --global user.name "devil-black-786"
echo -e "\n Added your username!\n"

#Email
echo -e "\n==================   Adding Email   ==================\n"
git config --global user.email "fahimahmad904@gmail.com"
echo -e "\n Added your email!\n"

#List Settings
echo -e "\n==================   List Settings   ==================\n"
git config --list

wget https://raw.githubusercontent.com/CyberJalagam/android_rom_building_scripts/master/env.sh
chmod +x env.sh
bash env.sh

# Lets setup the rom
cd && mkdir sakura && cd oct
repo init -u https://github.com/Octavi-OS/platform_manifest.git -b 11
repo sync --current-branch --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune -j8

#Face Unlock
git clone https://bitbucket.org/syberia-project/external_motorola_faceunlock.git -b 11.0 external/motorola/faceunlock

#Private Stuffs
rm -rf packages/apps/Settings
git clone https://github.com/Octavi-Broken-Lab/android_packages_apps_Settings -b 1.5 packages/apps/Settings

rm -rf frameworks/base
git clone https://github.com/Octavi-Broken-Lab/frameworks_base -b 1.5 frameworks/base

rm -rf packages/apps/OctaviLab
git clone https://github.com/Octavi-Broken-Lab/android_packages_apps_OctaviLab -b 1.5 packages/apps/OctaviLab

# Device tree
echo -e "\n================== Clonning device tree ==================\n"
git clone https://github.com/devil-black-786/octavi_oppo_CPH1859 -b oct device/oppo/CPH1859

cp -r ../sakura-priv vendor

# Vendor Tree
echo -e "\n================== Clonning vendor tree ==================\n"
git clone https://github.com/CPH1859/proprietary_vendor_oppo_CPH1859 vendor/oppo/CPH1859

# Kernel Tree
echo -e "\n================== Clonning kernel tree ==================\n"
git clone https://github.com/CPH1859/android_kernel_oppo_mt6771 kernel/oppo/mt6771
echo -e "\n Done!\n"

source build/envsetup.sh
brunch octavi_CPH1859-userdebug -j8

echo "<<<<< © The Devil ™ >>>>>"
