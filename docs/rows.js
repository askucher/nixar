module.exports = function(repo) {
  repo.docs.push({
    "name": "rows",
    "files": [
      "<p>Native Command\n<code>sh\n$ cat filename.txt | sed -n '1,5p;' <br />\n</code></p>",
      "<h3>Take 1 - 5 lines and skip other</h3>\n\n<p>Input\n<code>sh\nline 1\nline 2\nline 3\nline 4\nline 5\nline 6\nline 7\nline 8\nline 9\nline 10\n</code></p>\n\n<p>Command\n<code>sh\n$ cat filename.txt | rows 1-5\n</code></p>\n\n<p>Output\n<code>sh\nline 1\nline 2\nline 3\nline 4\nline 5\n</code></p>"
    ]
  });
}