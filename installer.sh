#!/bin/bash

get_latest_release_number() {
  curl --silent "https://api.github.com/repos/$1/releases/latest" | # Get latest release from GitHub api
    grep '"tag_name":' |                                            # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/'                                    # Pluck JSON value
}

latest_version=$(get_latest_release_number "minemobs/cbLang")
echo "Latest version is $latest_version"
curl --location --silent "https://github.com/Minemobs/cbLang/releases/download/$latest_version/cbLang" >> /tmp/cbLang && md5sum /tmp/cbLang && sudo mv /tmp/cbLang /usr/local/bin/cbLang && sudo chmod +rx /usr/local/bin/cbLang
