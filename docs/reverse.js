module.exports = function(repo) {
  repo.docs.push({
    "name": "reverse",
    "files": [
      "<p>Command\n<code>sh\n$ cat filename.txt | sed '1!G;h;$!d'\n</code></p>",
      "<h3>Display the list in reverse order</h3>\n\n<p>Input\n<code>sh\nline 1\nline 2\nline 3\nline 4\nline 5\n</code></p>\n\n<p>Command\n<code>sh\n$ cat filename.txt | reverse\n</code></p>\n\n<p>Output\n<code>sh\nline 5\nline 4\nline 3\nline 2\nline 1\n</code></p>"
    ]
  });
}