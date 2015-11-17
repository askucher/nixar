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
         if (mask ? "") is ""
             transform = (c)->
                 "#{c.name} ".green +  c.desc
             callback repo.commands.map(transform)
         else 
             callback repo.commands.filter(-> it.name is mask).map(JSON.stringify)
       