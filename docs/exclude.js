module.exports = function(repo) {
  repo.docs.push({
    "name": "exclude",
    "files": [
      "<p>Command\n<code>sh\n$ cat filename.txt |  grep -Ev '5' \n</code></p>",
      "<h3>Delete rows any value in these lines</h3>\n\n<p>Input\n<code>sh\nline 1\nline 2\nline 3\nline 4\nline 5\n</code></p>\n\n<p>Command\n<code>sh\n$ cat filename.txt | exclude 5\n</code></p>\n\n<p>Output\n<code>\nline 1\nline 2\nline 3\nline 4\n</code></p>"
    ]
  });
}