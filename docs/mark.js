module.exports = function(repo) {
  repo.docs.push({
    "name": "mark",
    "files": [
      "<p>Операция\n<code>sh\n$ tail -f filename.txt | perl -pe 's/word 0/\\e[1;31;43m$&amp;\\e[0m/g' <br />\n</code></p>",
      "<h3>Подсветка ключевых слов внутри файла</h3>\n\n<p>Вход\n<code>sh\nline 1 line 2 word 0 line 3 line 4 line 5\n</code></p>\n\n<p>Операция\n<code>sh\n$ cat filename.txt | mark \"word 0\"\n</code></p>\n\n<p>Выход\n<code>\nline 1\nline 2\n&lt;span class=\"mark\"&gt;word 0&lt;/span&gt; \nline 3 \nline 4 \nline 5\n</code></p>"
    ]
  });
}