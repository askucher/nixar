module.exports = (repo, p)->
  repo.commands.push do
    name: "average"
    desc: "Calculate average of integers"
    input: \lines
    output: \line
    enabled: yes
    compile: ->
      (mask, lines)-> 
        lines |> p.average |> arr