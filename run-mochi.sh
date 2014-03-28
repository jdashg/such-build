#!/bin/bash

#Calling ['/builds/slave/test/build/venv/bin/python',
#         '-u',
#         '/builds/slave/test/build/tests/mochitest/runtests.py',
#         '--appname=/builds/slave/test/build/application/firefox/firefox',
#         '--utility-path=tests/bin',
#         '--extra-profile-file=tests/bin/plugins',
#         '--symbols-path=http://ftp.mozilla.org/pub/mozilla.org/firefox/try-builds/jgilbert@mozilla.com-786aa3e954b6/try-linux/firefox-28.0a1.en-US.linux-i686.crashreporter-symbols.zip',
#         '--certificate-path=tests/certs',
#         '--autorun',
#         '--close-when-done',
#         '--console-level=INFO',
#         '--setpref=webgl.force-enabled=true',
#         '--total-chunks=5',
#         '--this-chunk=1',
#         '--chunk-by-dir=4'
#] with output_timeout 1000

appDir="$1"
eval testDir="$appDir"

testBaseDir="$2"
eval testBaseDir="$testBaseDir"

manifestDir="$3"
eval manifestDir="$testDir"

if [[ ! -d "$appDir" ]]; then
  echo "ABORT: appDir \"$appDir\" is missing."
  exit 1
fi

if [[ ! -d "$testBaseDir" ]]; then
  echo "ABORT: testBaseDir \"$testBaseDir\" is missing."
  exit 2
fi
if [[ ! -d "$manifestDir" ]]; then
  echo "ABORT: manifestDir \"$manifestDir\" is missing."
  exit 2
fi

appName="$appDir/firefox"
testScript="$testBaseDir/mochitest/runtests.py"
testManifest="$manifestDir/mochitest.ini"

python2 -u "$testScript" --appname="$appName" --autorun --close-when-done --manifest="$testManifest"
