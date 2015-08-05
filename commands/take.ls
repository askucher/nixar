module.exports = (repo, p)->
  repo.commands.push do
    name: "take"
    desc: "Get specific count of lines"
    input: \lines
    output: \lines
    enabled: yes
    compile: ->
      (mask, lines)->
        lines |> p.take mask