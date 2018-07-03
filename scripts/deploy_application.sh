#!/bin/bash

export HOME=/root

#cd ~
#tar -xvf scm_artifact.tar 

echo "----"
echo "Installing CF CLI"
echo "----"

chmod +x ./scripts/install_cf_cli.sh
./scripts/install_cf_cli.sh

echo "----"
echo "Configure CF ENV"
echo "----"

chmod +x ./scripts/configure_cf_cli.rb
./scripts/configure_cf_cli.rb

echo "----"
echo "Deploying to CF"
echo "----"

set +x

cf target
cf push --random-route
