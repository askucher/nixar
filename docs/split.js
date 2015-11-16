module.exports = function(repo) {
  repo.docs.push({
    "name": "split",
    "files": [
      "<p>Command\n<code>sh\n$ cat filename.txt | awk 'BEGIN{RS=\", \"}{print}'\n</code></p>",
      "<h3>Split line into multiple lines by a tab character</h3>\n\n<p>Input\n<code>sh\nline 1, line 2, line 3, line 4, line 5\n</code></p>\n\n<p>Command\n<code>sh\n$ cat filename.txt | split \", \"\n</code></p>\n\n<p>Output\n<code>sh\nline 1\nline 2\nline 3\nline 4\nline 5\n</code></p>"
    ]
  });
}