module.exports = (repo)->
  repo.commands.push do
    name: "before"
    desc: "Prints everything before mask"
    input: \line
    output: \line
    enabled: yes
    doc: 
      examples: 
        * ''
        ...
    compile: ->
      (mask, input)->
        index = 
           input.index-of(mask)
        if index > -1
          input.substr(0, index)
        else 
          input