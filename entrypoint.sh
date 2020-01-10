#! /bin/sh
#
# entrypoint.sh
# Copyright © 2020 Enno Boland <mail@eboland.de>
#
# Distributed under terms of the MIT license.
#

PLUGIN_SRC='/local'
PLUGIN_DEST='/plugins'
PLUGIN="$1"

set -e
cp "$PLUGIN_SRC/$PLUGIN" "$PLUGIN_DEST/$PLUGIN"
chmod a+rx "$PLUGIN_DEST/$PLUGIN"
