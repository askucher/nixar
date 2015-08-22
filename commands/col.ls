module.exports = (repo, p, parser)->
  repo.commands.push do
    name: "col"
    desc: "Get specific columns"
    input: \lines
    output: \lines
    enabled: yes
    doc: 
      examples: 
        * ''
        ...
    compile: ->
      (mask, lines)->
        items = 
          lines |> p.map (.split(/[ ]+/))
        columns = 
           parser.numbers mask, (items.0?length - 1)
        pad = (str, len) ->
          ((if str is '' then ' ' else str) + Array(len).join(' ')).slice 0, len
        maxes = []
        each-item = (s)->
          s.for-each (_, i)->
                maxes[i] = Math.max(s[i].length, maxes[i] ? 0)
        items |> p.each each-item
              |> p.map (.map((item, c)-> pad(item, maxes[c])).filter( (item, i)-> columns.index-of(i) > -1).join (' '))