module.exports = function(repo) {
  repo.docs.push({
    "name": "count",
    "files": [
      "<p>Native Command\n<code>sh\n$ cat filename | wc -l  #=&gt; 5\n</code></p>",
      "<h3>Calculate the number of lines</h3>\n\n<p>Input\n<code>sh\nline 1\nline 2\nline 3\nline 4\nline 5\n</code></p>\n\n<p>Command\n<code>sh\n$ cat filename | count  #=&gt; 5\n</code></p>"
    ]
  });
}