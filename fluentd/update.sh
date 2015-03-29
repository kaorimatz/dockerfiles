#!/bin/bash

set -e

VERSIONS=(0.10.45 0.10.55 0.10.57 0.12.7)
SOURCES=(Dockerfile install.sh README.md)

image_name=$(cd "$(dirname "$0")" && basename "$(pwd)")
image_name_upper=$(tr '[:lower:]' '[:upper:]' <<<"$image_name")

for version in "${VERSIONS[@]}"; do
  [ -d "$version" ] && (cd "$version" && rm -f "${SOURCES[@]}")
  install -d "$version"
  install -m 644 "${SOURCES[@]}" "$version"
  (cd "$version" && sed -i "s/@${image_name_upper}_VERSION@/$version/g" "${SOURCES[@]}")
done
