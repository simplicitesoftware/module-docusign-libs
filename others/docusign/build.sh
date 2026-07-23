#!/bin/bash
set -e

echo "Build the dependency tree..."
rm -f dependencies.txt
mvn dependency:tree -DoutputFile=dependencies.txt

echo "Downloading JARs from maven central..."
rm -rf lib
mvn dependency:copy-dependencies -DoutputDirectory=./lib

echo "Building ZIP in module Script directory..."
rm -f ../../Script/scr_file/0/17/docusign.zip
zip -r ../../Script/scr_file/0/17/docusign.zip lib/

echo "Done. Check the result and commit/push the module to GitHub."
