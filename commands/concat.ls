module.exports = (repo, p)->
  repo.commands.push do
    name: "concat"
    desc: "Joins lines into one line"
    input: \lines
    output: \line
    enabled: yes
    doc: 
      examples: 
        * ''
        ...
    compile: ->
      (mask, lines)->
          lines |> p.join mask
       