#
# Copyright (C) 2022 TheHitMan7
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.

# Set non-privileged app source
ifeq (APPS,$(LOCAL_MODULE_CLASS))
TARGET_MODULE := app
endif

# Set privileged app source
ifeq (true,$(LOCAL_PRIVILEGED_MODULE))
TARGET_MODULE := priv-app
endif

# Set overlay app source
ifeq (true,$(LOCAL_OVERLAY_MODULE))
TARGET_MODULE := overlay
endif

LOCAL_SRC_FILES := $(MICROG_COMMON_SOURCE)/$(TARGET_MODULE)/$(LOCAL_PACKAGE_NAME)/$(LOCAL_PACKAGE_NAME).apk
