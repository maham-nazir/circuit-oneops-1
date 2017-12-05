#!/bin/bash
rake spec
R=$?
if [ $R == 1 ]; then
	echo "RAKE FAILED";
	exit 1
else
	echo "RAKE PASSED";
	exit 0
fi