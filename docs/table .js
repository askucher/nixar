module.exports = function(repo) {
  repo.docs.push({
    "name": "table ",
    "files": [
      "<h3>Create a virtual table from the text</h3>\n\n<p>Input\n<code>sh\nAFTER PRINT EVERYTHING AFTER MASK\nBEFORE PRINT EVERYTHING BEFORE MASK\nCOL GET SPECIFIC COLUMNS\nCONCAT JOIN LINES INTO ONE LINE\nCOUNT CALCULATE COUNT OF LINES\nDROP DROP LINES\nEXCLUDE EXCLUDE LINE BY FOUNDED MASK\n</code></p>\n\n<p>Command\n<code>sh\n$ cat filename.txt | table \" \"\n</code></p>\n\n<p>Output\n```\nAFTER    PRINT      EVERYTHING  AFTER    MASK <br />\nBEFORE   PRINT      EVERYTHING  BEFORE   MASK <br />\nCOL      GET        SPECIFIC    COLUMNS <br />\nCONCAT   JOIN       LINES       INTO     ONE      LINE\nCOUNT    CALCULATE  COUNT       OF       LINES <br />\nDROP     DROP       LINES <br />\nEXCLUDE  EXCLUDE    LINE        BY       FOUNDED  MASK</p>\n\n<p>```</p>"
    ]
  });
}