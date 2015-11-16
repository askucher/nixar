module.exports = function(repo) {
  repo.docs.push({
    "name": "take",
    "files": [
      "<p>Command\n<code>sh\n$ cat filename.txt |  sed -n '1,5p;'\n</code></p>",
      "<h3>Show the first 5 lines of text</h3>\n\n<p>Input\n<code>sh\nline 1\nline 2\nline 3\nline 4\nline 5\nline 6\nline 7\nline 8\nline 9\nline 10\n</code></p>\n\n<p>Command\n<code>sh\n$ cat filename.txt | take 5\n</code></p>\n\n<p>Output\n<code>sh\nline 1\nline 2\nline 3\nline 4\nline 5\n</code></p>"
    ]
  });
}