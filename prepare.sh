#!/bin/bash

source version.sh

echo "Preparing for version ${TAG}"
echo "Download url set to ${URL}"

sed -i "s|DOWNLOAD_URL=|DOWNLOAD_URL=\"${URL}\"|g" install.sh