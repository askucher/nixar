module.exports = (repo, p)->
  repo.commands.push do
    name: "drop"
    desc: "Drop lines"
    input: \lines
    output: \lines
    enabled: yes
    doc: 
      examples: 
        * ''
        ...
    compile: ->
      (mask, lines)->
          lines |> p.drop mask
       