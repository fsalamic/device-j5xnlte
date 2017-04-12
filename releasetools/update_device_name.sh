#!/sbin/sh
#
# Copyright (C) 2017 The LineageOS Project
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

# Detect variant and copy its specific-blobs
VARIANT=$(/tmp/install/bin/get_variant.sh)

# exit if the device is unknown
if [ $VARIANT == "unknown" ]; then
	exit 1
fi

DEVICE="j5${VARIANT}"

# update the device name in the prop
echo "Updating device variant name ..."
sed -i s/j5[a-z]*/${DEVICE}/g /system/build.prop

exit 0
