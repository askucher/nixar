module.exports = (repo, p)->
  repo.commands.push do
    name: "sum"
    desc: "Calc sum of numbers in list"
    input: \lines
    output: \line
    enabled: yes
    doc: 
      examples: 
        * ''
        ...
    compile: ->
      (mask, input)->
         input |> p.sum