#!/bin/bash

export HOME=/root

cd ~

mv /usr/local/repos .

echo "-------"
echo "Archiving source"
echo "-------"

tar -cvf scm_artifact.tar ./repos > /dev/null 2>&1
