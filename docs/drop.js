module.exports = function(repo) {
  repo.docs.push({
    "name": "drop",
    "files": [
      "<p>Command\n<code>sh\n$ cat filename.txt | sed '1, 5d' <br />\n</code></p>",
      "<h3>Delete the first 5 lines of text</h3>\n\n<p>Input\n<code>sh\nline 1\nline 2\nline 3\nline 4\nline 5\nline 6\nline 7\nline 8\nline 9 \nline 10\n</code></p>\n\n<p>Command\n<code>sh\n$ cat filename.txt | drop 5\n</code></p>\n\n<p>Output\n<code>sh\nline 6\nline 7\nline 8\nline 9 \nline 10\n</code></p>",
      "<p>Command\n<code>sh\n$ cat filename.txt | sed -n -e :a -e '6,10!{P;N;D;};N;ba' \n</code></p>",
      "<h3>Delete the last 5 lines of text</h3>\n\n<p>Input\n<code>sh\nline 1\nline 2\nline 3\nline 4\nline 5\nline 6\nline 7\nline 8\nline 9 \nline 10\n</code></p>\n\n<p>Command\n<code>sh\n$ cat filename.txt | reverse | drop 5 | reverse\n</code></p>\n\n<p>Output\n<code>sh\nline 1\nline 2\nline 3\nline 4\nline 5\n</code></p>"
    ]
  });
}