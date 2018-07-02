#!/bin/bash

$CURDIR=`pwd`

echo "-------"
echo "Archiving source"
echo "-------"

tar -cvf scm_artifact.tar /usr/local/repos
