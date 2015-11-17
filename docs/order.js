module.exports = function(repo) {
  repo.docs.push({
    "name": "order",
    "files": [
      "<p>Native Command\n<code>sh\ncat filename.txt | sort -k 1,3n\n</code></p>",
      "<h3>Display rows in ascending order</h3>\n\n<p>Input</p>\n\n<p><code>sh\nline 2\nline 3\nline 1\nline 5\nline 4\n</code></p>\n\n<p>Command\n<code>sh\ncat filename.txt | order 1\n</code></p>\n\n<p>Output\n<code>sh\nline 1\nline 2\nline 3\nline 4\nline 5\n</code></p>"
    ]
  });
}