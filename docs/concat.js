module.exports = function(repo) {
  repo.docs.push({
    "name": "concat",
    "files": [
      "<p>Command\n<code>sh\n$ filename.txt | sed ':a;N;$!ba;s/\\n/ /g'\n</code></p>",
      "<h3>Transformation of the table in the line on the separator</h3>\n\n<p>Input\n<code>sh\nafter print everything after mask\nbefore print everything before mask\ncol get specific columns\nconcat join lines into one line\ncount calculate count of lines\ndrop drop lines\n</code></p>\n\n<p>Command\n<code>sh\n$ cat filename.txt | concat \" \"\n</code></p>\n\n<p>Output\n<code>sh\nafter print everything after mask before print everything before mask col get specific columns concat join lines into one line count calculate count of lines drop drop lines\n</code></p>"
    ]
  });
}