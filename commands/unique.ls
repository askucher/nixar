module.exports = (repo, p)->
  repo.commands.push do
    name: "unique"
    desc: "Print only unique lines"
    input: \lines
    output: \lines
    enabled: yes
    compile: ->
      (mask, lines)->
         lines |> p.unique