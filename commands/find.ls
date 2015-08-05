module.exports = (repo, common, p)->
  repo.commands.push do
    name: "find"
    desc: "Find specific line"
    input: \multi
    output: \single
    enabled: yes
    compile: ->
      (mask, lines)->
         lines.map(common.filter mask).filter((v) -> v isnt null) |> p.head


