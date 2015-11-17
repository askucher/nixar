module.exports = function(repo) {
  repo.docs.push({
    "name": "fs",
    "files": [
      "<p>Native Command\n<code>sh\n$ ls *.*  #=&gt; filename.txt  rootfile.txt  rootfile2.txt\n</code></p>",
      "<h3>Search files in the current directory</h3>\n\n<p>Command\n<code>sh\n$ fs *.* \n</code></p>\n\n<p>Output \n<code>sh\nfilename.txt\nrootfile.txt\nrootfile2.txt\n</code></p>",
      "<p>Command\n<code>sh\n$ fs */  #=&gt; folder1/  folder2/\n</code></p>",
      "<h3>Find and display all folders in the current directory</h3>\n\n<p>Command\n<code>sh\n$ fs */  #=&gt; folder1/\n</code></p>",
      "<p>Command\n<code>sh\n$ ls -Rl\n</code></p>",
      "<h3>Recursive search for files and folders</h3>\n\n<p>Command\n<code>sh\n$ fs all \n</code></p>\n\n<p>Output \n<code>sh\nfilename.txt\nfolder1/\nfolder1/folder1/\nfolder1/folder1/file.csv\nfolder1/folder1/file.txt\nfolder1/folder1/file2.csv\nfolder1/folder1/file2.txt\nfolder1/folder2/\nfolder1/folder2/file.csv\nfolder1/folder2/file1.txt\nrootfile.txt\nrootfile2.txt\n</code></p>",
      "<p>Command\n<code>sh\n$ find -mindepth 4 -type f -print\n</code></p>",
      "<h3>Recursive file search</h3>\n\n<p>Command\n<code>sh\n$ fs **/*.* \n</code></p>\n\n<p>Output \n<code>sh\nfilename.txt\nfolder1/folder1/file.csv\nfolder1/folder1/file.txt\nfolder1/folder1/file2.csv\nfolder1/folder1/file2.txt\nfolder1/folder2/file.csv\nfolder1/folder2/file1.txt\nrootfile.txt\nrootfile2.txt\n</code></p>"
    ]
  });
}