module.exports = (repo)->
  repo.commands.push do
    name: "length"
    desc: "Calculate count of charecters"
    input: \line 
    output: \line
    enabled: yes
    doc: 
      examples: 
        * ''
        ...
    compile: ->
      (mask, input)->
         input.length