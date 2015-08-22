module.exports = (repo, p, parser)->
  repo.commands.push do
    name: \col
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
        pad = (str, len) ->
          ((if str is '' then ' ' else str) + Array(len).join(' ')).slice 0, len
        state = 
          maxes: []
          columns: []
        each-item = (s)->
          s.for-each (_, i)->
                state.maxes[i] = Math.max(s[i].length, state.maxes[i] ? 0)
        make-columns = (it)->
          state.columns = parser.numbers mask, (state.maxes.length - 1)
          it
        lines |> p.map (.split(/[ ]+/))
              |> p.each each-item
              |> make-columns
              |> p.map (.map((item, c)-> pad(item, state.maxes[c])).filter( (item, i)-> state.columns.index-of(i) > -1).join (' '))