module.exports = function(repo) {
  repo.docs.push({
    "name": "turn",
    "files": [
      "<h3>Row to column, column to row transformation. This command does job of concat and split commands</h3>\n\n<p>Input\n<code>sh\nline 1\nline 2\nline 3\nline 4\nline 5\n</code></p>\n\n<p>Command\n<code>sh\n$ cat filename.txt | turn <br />\n</code></p>\n\n<p>Output\n<code>sh\nline  line  line  line  line\n1     2     3     4     5\n</code></p>"
    ]
  });
}