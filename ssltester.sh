#!/bin/bash

for L in `cat servers.txt`; do
	echo "checking $L"
	timeout 10 ./heartbleeder $L 2>&1 | tee -a output
done
