module.exports = (repo)->
  repo.commands.push do
    name: "before"
    desc: "Print everything before"
    input: \line
    output: \line
    enabled: yes
    compile: ->
      (mask, input)->
        index = 
           input.index-of(mask)
        if index > -1
          input.substr(0, index)
        else 
          input