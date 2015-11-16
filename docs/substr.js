module.exports = function(repo) {
  repo.docs.push({
    "name": "substr",
    "files": [
      "<p>Command\n<code>sh\n$ cat filename.txt | cut -c 6- <br />\n</code></p>",
      "<h3>Delete the first 5 characters of each line</h3>\n\n<p>Input\n<code>sh\nline 1\nline 2\nline 3\nline 4\nline 5\n</code></p>\n\n<p>Command\n<code>sh\n$ cat filename.txt | substr 5\n</code></p>\n\n<p>Output\n<code>sh\n1\n2\n3\n4\n5\n</code></p>"
    ]
  });
}