module.exports = (repo, p)->
  repo.commands.push do
    name: "min"
    desc: "Calc minimum number"
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
