module.exports = (repo)->
  repo.commands.push do
    name: "count"
    desc: "Calculate count of lines"
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