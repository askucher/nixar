module.exports = (repo, p)->
  repo.commands.push do
    name: "max"
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
         input |> p.maximum
       