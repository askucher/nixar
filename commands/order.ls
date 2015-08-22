module.exports = (repo, p)->
  repo.commands.push do
    name: "order"
    desc: "Sort lines"
    input: \lines
    output: \lines
    enabled: yes
    compile: ->
       (mask, lines)->
          if (mask ? "") is ""
            lines |> p.sort
          else 
            index = parse-int(mask)
            pad = (str, len) ->
              ((if str is '' then ' ' else str) + Array(len).join(' ')).slice 0, len
            maxes = []
            compare = (a, b) -> 
              fun = 
                | (a[index] + b[index]).to-string!.match(/[0-9]+/) => parse-int
                | _ => -> it
              
              res =
                | fun(a[index]) < fun(b[index]) => -1
                | fun(a[index]) > fun(b[index]) => 1
                | _ => 0
              res
            lines |> p.map (.split(/[ ]+/))
                  |> p.each (s)->
                       s.for-each (_, i)->
                          maxes[i] = Math.max(s[i].length, maxes[i] ? 0)
                  |> p.sort-with compare
                  |> p.map (.map((item, c)-> pad(item, maxes[c])).join (' '))
              