#!/bin/sh

# Script to update Zen Browser xbps-src template
#
# Required: vpsm, xbps-src, curl, sed, fish
#
# You have to set XBPS_DISTDIR
# Example: export XBPS_DISTDIR="$HOME/.void-packages"

release_url=$(curl -Ls -o /dev/null -w '%{url_effective}' https://github.com/zen-browser/desktop/releases/latest)
release_tag=$(basename "$release_url")
release_tag=$(echo "$release_tag" | sed 's/-//g')
echo "Downloading Zen Browser $release_tag"

sed -i 's/version=[a-zA-Z0-9.-]\+/version='"$release_tag"'/' "$XBPS_DISTDIR/srcpkgs/zen-browser/template"
echo "Updated version in template"

vpsm xgsum zen-browser
echo "Updated checksums"

vpsm install zen-browser
echo "Installed Zen Browser $release_tag"
