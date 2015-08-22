module.exports = (repo, p)->
  repo.commands.push do
    name: "uniq"
    desc: "Get unique records"
    input: \lines
    output: \lines
    enabled: yes
    doc: 
      examples: 
        * ''
        ...
    compile: ->
      (mask, lines)->
          lines |> p.unique
       