module.exports = function(repo) {
  repo.docs.push({
    "name": "col",
    "files": [
      "<p>Command\n<code>sh\n$ ls -la | awk '{print $1,$3}'\n</code></p>",
      "<h3>Print the first and third column of the text presented in a table</h3>\n\n<p>Input\n<code>sh\ndrwxrwxr-x  4 ubuntu ubuntu 4096 Aug 12 07:38 ./\ndrwxr-xr-x 20 ubuntu ubuntu 4096 Aug 12 07:15 ../\ndrwxr-xr-x  3 ubuntu ubuntu 4096 Aug  7 15:20 .c9/\ndrwxr-xr-x  4 ubuntu ubuntu 4096 Aug  7 15:41 folder1/\n-rw-r--r--  1 ubuntu ubuntu  507 Aug 11 12:25 rootfile.txt\n-rw-r--r--  1 ubuntu ubuntu  572 Aug  8 23:01 rootfile2.txt\n</code></p>\n\n<p>Command\n<code>sh\n$ ls -la | col 1 3\n</code></p>\n\n<p>Output\n<code>sh\ndrwxrwxr-x ubuntu\ndrwxr-xr-x ubuntu\ndrwxr-xr-x ubuntu\ndrwxr-xr-x ubuntu\n-rw-r--r-- ubuntu\n-rw-r--r-- ubuntu\n</code></p>",
      "<p>Command\n<code>sh\n$ cat filename.txt | awk 'BEGIN{RS=\", \"}{print}' | sed -e 's/word //g'\n</code></p>",
      "<h3>Convert a string to a column and display the correct column</h3>\n\n<p>Input\n<code>sh\nword 1, word 2, word 3, word 4, word 5\n</code></p>\n\n<p>Command\n<code>sh\n$ cat filename.txt | split \", \" | remove \"word \"\n</code></p>\n\n<p>Output\n<code>sh\n1\n2\n3\n4\n5\n</code></p>",
      "<p>Command\n<code>sh\n$ cat filename.txt | awk 'BEGIN{RS=\", \"}{print}' | awk '{print $1}'\n</code></p>",
      "<p>input\n<code>sh\nword 1, word 2, word 3, word 4, word 5\n</code></p>\n\n<p>Command\n<code>sh\n$ cat filename.txt | split \", \" | col 1\n</code></p>\n\n<p>Output\n<code>sh\nword\nword\nword\nword\nword\n</code></p>"
    ]
  });
}