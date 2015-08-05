module.exports = (repo, p)->
  repo.commands.push do
    name: "at"
    desc: "Get specific line"
    input: \lines
    output: \line
    enabled: yes
    compile: ->
      (mask, lines)->
        lines |> p.at mask