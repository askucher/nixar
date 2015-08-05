module.exports = (repo, p)->
  repo.commands.push do
    name: "drop"
    desc: "Drop lines from top"
    input: \lines
    output: \lines
    enabled: yes
    compile: ->
      (mask, lines)->
         lines |> p.drop mask