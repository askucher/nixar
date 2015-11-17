module.exports = (repo)->
  repo.commands.push do
    name: "length"
    desc: "Calculates characters count"
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