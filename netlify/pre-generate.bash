#!/bin/bash          
get_latest_release() {
  curl --silent "https://api.github.com/repos/DigitalVCard/public-generator/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'
}
a=$(get_latest_release)
echo $SITE_NAME
wget -q https://github.com/DigitalVCard/public-generator/releases/download/$a/generator
chmod 777 generator