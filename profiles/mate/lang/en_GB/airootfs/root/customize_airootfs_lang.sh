#!/usr/bin/env bash
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -e -u

# el_GR.UTF-8 locales
sed -i 's/#\(en_GB\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

# Greece, Athens timezone
ln -sf /usr/share/zoneinfo/Europe/London /etc/localtime
