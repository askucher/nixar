module.exports = function(repo) {
  repo.docs.push({
    "name": "trim",
    "files": [
      "<p>Command\n<code>sh\n$ cat filename.txt | cut -c2-3 <br />\n</code></p>",
      "<h3>Trim line with the two sides on the basis of the specified value</h3>\n\n<p>Input\n<code>sh\ntest\ntest\ntest\ntest\ntest\n</code></p>\n\n<p>Command\n<code>sh\n$ cat filename.txt | trim t\n</code></p>\n\n<p>Output\n<code>sh\nes\nes\nes\nes\nes\n</code></p>"
    ]
  });
}