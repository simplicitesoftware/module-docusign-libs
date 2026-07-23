Docusign
========

This helps to build the DocuSign JAR and its dependencies into a ZIP file for use in the Addon module.

Build script
------------

- Launch Git Bash in the `others/docusign` directory.
- and run the following command to build the ZIP file:

```bash
./build.sh
```

- then commit and push the module to GitHub.

Command line instructions
-------------------------

Look for updates:

```bash
mvn versions:display-dependency-updates
```

Build dependency tree:

```bash
mvn dependency:tree -DoutputFile=dependencies.txt
```

Download JARs to a local directory:

```bash
rm -rf lib
mvn dependency:copy-dependencies -DoutputDirectory=./lib
```

Build the ZIP:

```bash
rm -f ../../Script/scr_file/0/17/docusign.zip
zip -r ../../Script/scr_file/0/17/docusign.zip lib/
```
