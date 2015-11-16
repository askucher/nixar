module.exports = function(repo) {
  repo.docs.push({
    "name": "remove",
    "files": [
      "<p>Command\n<code>sh\n$ cat filename.txt | sed -e 's/line //g'\n</code></p>",
      "<h3>Remove any value in the text</h3>\n\n<p>Input\n<code>sh\nline 1\nline 2\nline 3\nline 4\nline 5\n</code></p>\n\n<p>Command\n<code>sh\n$ cat filename.txt | remove \"line \"\n</code></p>\n\n<p>Output\n<code>sh\n1\n2\n3\n4\n5\n</code></p>"
    ]
  });
}