#!/bin/bash

export HOME=/root

cd ~

tar -xvf scm_artifact.tar > /dev/null 2>&1 
rm scm_artifact.tar

echo "----"
echo "Building Static Webpage"
echo "----"

set -ex
sed -i "s/TIME/`TZ=":America/Los_Angeles" date`/g" ./repos/index.html
set +ex

echo "----"
echo "Static Webpage Built"
echo "----"

tar -cvf build_artifact.tar ./repos > /dev/null 2>&1
