module.exports = (repo, p)->
  repo.commands.push do
    name: "take"
    desc: "Select lines"
    input: \lines
    output: \lines
    enabled: yes
    doc: 
      examples: 
        * ''
        ...
    compile: ->
      (mask, lines)->
          lines |> p.take mask
       