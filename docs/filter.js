module.exports = function(repo) {
  repo.docs.push({
    "name": "filter",
    "files": [
      "<p>Операция\n<code>sh\n$ cat filename.txt | grep 5\n</code></p>",
      "<h3>Отфильтровать и вывести строки с указанным значением</h3>\n\n<p>Вход\n<code>sh\nline 1\nline 1\nline 2\nline 2\nline 3\nline 3\nline 4\nline 4\nline 5\nline 5\n</code></p>\n\n<p>Операция\n<code>sh\n$ cat filename.txt | filter 5\n</code></p>\n\n<p>Выход\n<code>\nline 5\nline 5\n</code></p>"
    ]
  });
}