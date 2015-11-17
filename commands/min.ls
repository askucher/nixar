module.exports = (repo, p)->
  repo.commands.push do
    name: "min" 
    desc: "Calculates minimum number from list of numbers"
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