module.exports = (repo, p, parser)->
  repo.commands.push do
    name: "row"
    desc: "Get specific row"
    input: \lines
    output: \lines
    enabled: yes
    doc: 
      examples: 
        * ''
        ...
    compile: ->
      (mask, lines)->
        rows = parser.numbers mask, (lines.length - 1)
        lines.filter( (_, i) -> rows.index-of(i) > -1 )