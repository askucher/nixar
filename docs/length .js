module.exports = function(repo) {
  repo.docs.push({
    "name": "length ",
    "files": [
      "<p>Command\n<code>sh\n$ cat filename.txt | wc -c filename.txt  #=&gt; 72 filename.txt <br />\n</code></p>",
      "<h3>List the number of characters in the file</h3>\n\n<p>input\n<code>sh\n1 line 2 line 3 line 4 line 5 line \n1 line 2 line 3 line 4 line 5 line\n</code></p>\n\n<p>Command\n```sh\n$ cat filename.txt | length  #=> 35\n                             #=> 35</p>\n\n<p>$ fs all | filter filename.txt | file | concat \" \" | length  #=> 72 <br />\n```</p>"
    ]
  });
}