module.exports = (repo, p, parser)->
  repo.commands.push do
    name: \rows
    desc: "Gets specific rows"
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