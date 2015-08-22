module.exports = (repo)->
  repo.commands.push do
    name: "replace"
    desc: "Replace substring in line"
    input: \line
    output: \line
    enabled: yes
    doc: 
      examples: 
        * ''
        ...
    compile: ->
      (mask, input)->
        keys = mask.split(\,)
        input.split(keys.0).join(keys.1)