module.exports = (repo)->
  repo.commands.push do
    name: "count"
    desc: "Calculates lines count"
    input: \lines
    output: \line
    enabled: yes
    doc: 
      examples: 
        * ''
        ...
    compile: ->
      (mask, lines)->
        lines |> (.length)