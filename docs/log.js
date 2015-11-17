module.exports = function(repo) {
  repo.docs.push({
    "name": "log",
    "files": [
      "<p>Native Command\n<code>sh\n$ cat filename.txt  | sed 's/1 //g' | grep -i \" \" &gt;&gt; filename.txt <br />\n</code></p>",
      "<h3>Log current output into file and continue piping\"</h3>\n\n<p>Input\n<code>sh\n1 line 1\n1 line 2\n1 line 3\n1 line 4\n1 line 5\n</code></p>\n\n<p>Command\n<code>sh\n$ cat filename.txt | remove \"1 \" | log filename.txt\n</code></p>\n\n<p>The yield and the contents of filename.txt file matches\n<code>sh\nline 1\nline 2\nline 3\nline 4\nline 5\n</code></p>"
    ]
  });
}