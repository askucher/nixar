module.exports = (repo)->
  repo.commands.push do
    name: "after"
    desc: "Print everything after mask"
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
          input.substr(index + mask.length)
        else 
          input