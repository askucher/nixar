module.exports = function(repo) {
  repo.docs.push({
    "name": "lower",
    "files": [
      "<p>Command\n<code>sh\n$ cat filename.txt | tr '[:upper:]' '[:lower:]'  #=&gt; line 1 line 2 line 3 line 4 line 5\n</code></p>",
      "<h3>Display text in lowercase</h3>\n\n<p>Input\n<code>sh\nLINE 1 LINE 2 LINE 3 LINE 4 LINE 5\n</code></p>\n\n<p>Command\n<code>sh\n$ cat filename.txt | lower  #=&gt; line 1 line 2 line 3 line 4 line 5\n</code></p>"
    ]
  });
}