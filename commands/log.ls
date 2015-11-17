module.exports = (repo)->
  repo.commands.push do
    name: "log"
    desc: "Logs output to file and continues printing"
    input: \line
    output: \line
    enabled: yes
    doc: 
      examples: 
        * ''
        ...
    compile: ->
      fs = require \fs
      (mask, input)->
        if (input ? "") isnt ""
           fs.append-file-sync mask, (input + "\r\n"), \utf-8
        input