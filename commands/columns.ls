module.exports = (repo, p)->
  repo.commands.push do
    name: "columns"
    desc: "Get specific column"
    input: \lines
    output: \lines
    enabled: yes
    compile: ->
      (mask, lines)->
        columns = (if (mask ? "") is "" then "0" else mask).split(\,)
        pad = (str, len) ->
          ((if str is '' then ' ' else str) + Array(len).join(' ')).slice 0, len
        maxes = []
        lines |> p.map (.split(/[ ]+/))
              |> p.each (s)->
                   s.for-each (_, i)->
                      maxes[i] = Math.max(s[i].length, maxes[i] ? 0)
              |> p.map (.map((item, c)-> pad(item, maxes[c])).filter( (item, i)-> columns.index-of(i.to-string!) > -1).join (' '))