module.exports = (repo)->
  repo.commands.push do
    name: "remove"
    desc: "Remove substring in line"
    input: \line
    output: \line
    enabled: yes
    doc: 
      examples: 
        * ''
        ...
    compile: ->
      (mask, input)->
         input.split(mask).join("")