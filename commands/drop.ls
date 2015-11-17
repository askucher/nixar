module.exports = (repo, p)->
  repo.commands.push do
    name: \drop
    desc: "Drops lines"
    input: \lines
    output: \lines
    enabled: yes
    compile: ->
      (mask, lines)->
          count = mask.match('[0-9]+')?0 ? 1
          if mask.index-of('last') > -1 
             lines |> p.reverse |> p.drop count |> p.reverse
          else
            lines |> p.drop count
       