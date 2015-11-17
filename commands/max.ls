module.exports = (repo, p)->
  repo.commands.push do
    name: "max"
    desc: "Calculates maximum number from list of numbers"
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
       