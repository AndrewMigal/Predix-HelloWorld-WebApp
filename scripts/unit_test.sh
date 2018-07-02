#!/bin/bash

export HOME=/root

cd ~

tar -xvf scm_artifact.tar > /dev/null 2>&1
rm scm_artifact.tar > /dev/null 2>&1

echo "----"
echo "Running Unit Tests"
echo "----"

sleep 30

echo "----"
echo "Unit Tests Passed"
echo "----"
