module.exports = function(repo) {
  repo.docs.push({
    "name": "uniq",
    "files": [
      "<p>Command\n<code>sh\n$ cat filename.txt | uniq -u \n</code></p>",
      "<h3>Remove duplicate lines from text</h3>\n\n<p>Input\n<code>sh\n1 line\n2 line\n3 line\n4 line\n5 line\n1 line\n2 line\n3 line\n4 line\n5 line\n</code></p>\n\n<p>Command\n<code>sh\n$ cat filename.txt | uniq\n</code></p>\n\n<p>Output\n<code>sh\n1 line\n2 line\n3 line\n4 line\n5 line\n</code></p>"
    ]
  });
}