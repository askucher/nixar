module.exports = function(repo) {
  repo.docs.push({
    "name": "upper",
    "files": [
      "<p>Native Command\n<code>sh\n$ cat filename.txt | tr '[:lower:]' '[:upper:]'  #=&gt; LINE 1 LINE 2 LINE 3 LINE 4 LINE 5\n</code></p>",
      "<h3>Display the text in UPPERCASE</h3>\n\n<p>Input\n<code>sh\nline 1 line 2 line 3 line 4 line 5\n</code></p>\n\n<p>Output\n<code>sh\n$ cat filename.txt | upper  #=&gt; LINE 1 LINE 2 LINE 3 LINE 4 LINE 5\n</code></p>"
    ]
  });
}