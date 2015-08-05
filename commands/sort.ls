module.exports = (repo, p)->
  repo.commands.push do
    name: "sort"
    desc: "Sort lines"
    input: \lines
    output: \lines
    enabled: yes
    compile: ->
       (mask, lines)->
          lines |> p.sort