#!/bin/bash

export HOME=/root

cd ~

tar -xvf build_artifact.tar > /dev/null 2>&1

cd repos

echo "----"
echo "Installing CF CLI"
echo "----"

chmod +x ./scripts/install_cf_cli.sh
./scripts/install_cf_cli.sh > /dev/null 2>&1

echo "----"
echo "Configuring CF ENV"
echo "----"

chmod +x ./scripts/configure_cf_cli.rb
./scripts/configure_cf_cli.rb > /dev/null 2>&1

echo "----"
echo "Deploying to CF"
echo "----"

set -ex
cf target
cf push --random-route
