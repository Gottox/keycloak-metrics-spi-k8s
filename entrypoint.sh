#! /bin/sh
#
# entrypoint.sh
# Copyright © 2020 Enno Boland <mail@eboland.de>
#
# Distributed under terms of the MIT license.
#

PLUGIN_SRC='/plugins'
PLUGIN_DEST='/shared'
PLUGIN="$1"

set -e
cp "$PLUGIN_SRC/$PLUGIN" "$PLUGIN_DEST/$PLUGIN"
chmod a+rx "/shared/$PLUGIN"
