module.exports = function(repo) {
  repo.docs.push({
    "name": "map",
    "files": [
      "<p>Native Command\n<code>sh\n$  cat filename.txt | sed 's/^/lines /' \n</code></p>",
      "<h3>Transformation of a list of files and folders in the command is executed on them</h3>\n\n<p>Input\n<code>sh\n1\n2\n3\n4\n5\n</code></p>\n\n<p>Command\n<code>sh\ncat filename.txt | map \"lines *\"\n</code></p>\n\n<p>Output\n<code>sh\nlines 1\nlines 2\nlines 3\nlines 4\nlines 5\n</code></p>"
    ]
  });
}