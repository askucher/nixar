module.exports = (repo)->
  repo.commands.push do
    name: "lower"
    desc: "Converts characters to lowercase"
    input: \line
    output: \line
    enabled: yes
    doc: 
      examples: 
        * ''
        ...
    compile: ->
      (mask, input)->
        (input ? "").to-lower-case!