module.exports = (repo)->
  repo.commands.push do
    name: "trim"
    desc: "Remove spaces from start and end of line"
    input: \line 
    output: \line
    enabled: yes
    compile: ->
      (mask, input)->
         String(input).replace(/^\s+|\s+$/g, '')