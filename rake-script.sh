#!/bin/bash
rake spec
R=$?
export CODECLIMATE_REPO_TOKEN="8d765f9d4ab536cc345d67a54ad46267e5935f89ea3c9e3eba40be714fb28248"
codeclimate-test-reporter
if [ $R == 1 ]; then
	echo "RAKE FAILED";
	exit 1
else
	echo "RAKE PASSED";
	exit 0
fi