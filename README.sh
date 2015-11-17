#nixardoc
lsc -c *.ls
rm -rf compiled-commands
lsc -c commands/*.ls -o compiled-commands
lsc -c README.ls
node README.js
rm README.js

