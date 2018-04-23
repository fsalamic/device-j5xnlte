/*
   Copyright (c) 2017, The Linux Foundation. All rights reserved.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
	* Redistributions of source code must retain the above copyright
	  notice, this list of conditions and the following disclaimer.
	* Redistributions in binary form must reproduce the above
	  copyright notice, this list of conditions and the following
	  disclaimer in the documentation and/or other materials provided
	  with the distribution.
	* Neither the name of The Linux Foundation nor the names of its
	  contributors may be used to endorse or promote products derived
	  from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <init_msm8916.h>

void init_target_properties(void)
{
	char *device = NULL;
	char *model = NULL;

	/* get the bootloader string */
	std::string bootloader = android::base::GetProperty("ro.bootloader", "");

	if (bootloader.find("J510FN") == 0) {
                device = (char *)"j5xnlte";
                model = (char *)"SM-J510FN";
                set_lte_properties();
	}
	else if (bootloader.find("J510F") == 0) {
		device = (char *)"j5xlte";
		model = (char *)"SM-J510F";
		set_lte_properties();
	}
	else if (bootloader.find("J510MN") == 0) {
		device = (char *)"j5xnlte";
		model = (char *)"SM-J510F";
		set_lte_properties();
	}
	else if (bootloader.find("J510GN") == 0) {
		device = (char *)"j5xnlte";
		model = (char *)"SM-J510F";
		set_lte_properties();
	}
	else {
		return;
	}

	/* set the properties */
	set_target_properties(device, model);
}
