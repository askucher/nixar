module.exports = function(repo) {
  repo.docs.push({
    "name": "before",
    "files": [
      "<p>Native Command\n<code>sh\n$ cat filename.txt | sed 's/^\\(.*\\).$/\\1 /'\n</code></p>",
      "<h3>Print the string before a substring</h3>\n\n<p>Input\n<code>sh\nline 1\nline 2\nline 3\nline 4\nline 5\n</code></p>\n\n<p>Command\n<code>sh\n$ cat filename.txt | before \" \"\n</code></p>\n\n<p>Output\n<code>sh\nline\nline\nline\nline\nline\n</code></p>"
    ]
  });
}