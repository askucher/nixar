module.exports = (repo, p)->
  repo.commands.push do
    name: "min"
    desc: "Calc maximum number"
    input: \lines
    output: \line
    enabled: yes
    doc: 
      examples: 
        * ''
        ...
    compile: ->
      (mask, input)->
         input |> p.minimum