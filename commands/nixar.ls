module.exports = (repo, p)->
  repo.commands.push do
    name: "nixar"
    desc: "Shows all commands"
    input: \nothing
    output: \lines
    enabled: yes
    doc: 
      examples: 
        * ''
        ...
    compile: ->
      (skip, mask, callback)->
         switch (mask ? "")
           case ""
             transform = (c)->
                 "#{c.name} ".green +  c.desc
             callback repo.commands.map(transform)
           case "killall"
              str = "killall -9 " + repo.commands.map(-> it.name).join(" ")
              var exec = require('child_process').exec
              exec cmd, (error, stdout, stderr)->
                  callback ["killed"]
           else 
             callback repo.commands.filter(-> it.name is mask).map(JSON.stringify)
       