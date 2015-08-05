module.exports = (repo, p)->
  repo.commands.push do
    name: "last"
    desc: "Get last line"
    input: \lines
    output: \lines
    enabled: yes
    compile: ->
      (mask, lines)->
        lines |> p.reverse |> p.take (mask ? 1) |> p.reverse