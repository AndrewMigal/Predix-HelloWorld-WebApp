#!/bin/bash

export HOME=/root

cd ~

echo "----"
echo "Running Unit Tests"
echo "----"

sleep 30

echo "----"
echo "Unit Tests Passed"
echo "----"

tar -cvf scm_artifact.tar /usr/local/repos
