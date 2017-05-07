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
. /tmp/install/bin/variant_hook.sh

BLOBBASE=/system/blobs/$VARIANT

# Mount /system
mount_fs system

if [ -d $BLOBBASE ]; then

	cd $BLOBBASE

	# copy all the blobs
	for FILE in `find . -type f | cut -c 3-` ; do
		mkdir -p `dirname /system/$FILE`
		ui_print "Copying $FILE to /system/$FILE ..."
		cp $FILE /system/$FILE
	done

	# set permissions on binary files
	for FILE in bin/* ; do
		ui_print "Setting /system/$FILE executable ..."
		chmod 755 /system/$FILE
	done
fi

# remove the device blobs
ui_print "Cleaning up ..."
rm -rf /system/blobs
