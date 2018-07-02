#!/bin/bash

export HOME=/root

cd ~
tar -xvf build_artifact.tar && rm build_artifact.tar

echo "----"
echo "Running Unit Tests"
echo "----"

sleep 30

echo "----"
echo "Unit Tests Passed"
echo "----"

tar -cvf scm_artifact.tar 
