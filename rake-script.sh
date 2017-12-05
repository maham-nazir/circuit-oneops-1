#!/bin/bash
rake spec
R=$?
export CODECLIMATE_REPO_TOKEN="03655c58c1bda4ecc6d3da7a02314b4044068a271b9b0d6d8cc20799d50adc54"
codeclimate-test-reporter
if [ $R == 1 ]; then
	echo "RAKE FAILED";
	exit 1
else
	echo "RAKE PASSED";
	exit 0
fi