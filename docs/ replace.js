module.exports = function(repo) {
  repo.docs.push({
    "name": " replace",
    "files": [
      "<p>Command\n<code>sh\n$ cat filename.txt | sed 's/line/word/g'\n</code></p>",
      "<h3>Replace one value in the text to another</h3>\n\n<p>Input\n<code>sh\nline 1\nline 2\nline 3\nline 4\nline 5\n</code></p>\n\n<p>Command\n<code>sh\n$ cat filename.txt | replace line,word\n</code></p>\n\n<p>Output\n<code>sh\nword 1\nword 2\nword 3\nword 4\nword 5\n</code></p>"
    ]
  });
}