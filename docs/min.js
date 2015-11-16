module.exports = function(repo) {
  repo.docs.push({
    "name": "min",
    "files": [
      "<h3>It displays the number of characters of the shortest line</h3>\n\n<p>Input\n<code>sh\nline 1 2 3 4 5 6 7 8 9 10\nline 2\nline 3 \nline 4\nline\n</code></p>\n\n<p>Command\n<code>sh\n$ cat filename.txt | length | min <br />\n</code></p>\n\n<p>Output\n```sh</p>\n\n<p>```</p>"
    ]
  });
}