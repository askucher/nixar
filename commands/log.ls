module.exports = (repo)->
  repo.commands.push do
    name: "log"
    desc: "Log output into file and continue printing"
    input: \line
    output: \line
    enabled: yes
    compile: ->
      fs = require \fs
      (mask, input)->
        if (input ? "") isnt ""
           fs.append-file-sync mask, (input + "\r\n"), \utf-8
        input