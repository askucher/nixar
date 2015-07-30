require \xonom
  .service \all, (one)->
    nsh =  require \node-syntaxhighlighter
    p = require \prelude-ls
    Table = require \easy-table
    arr = (-> [it])
    split: (mask, lines)->
      if (mask ? "") is ""
        mask = " "
      t = new Table
      values = lines.map (.split(mask))
      
      values.for-each (row)->
        row.for-each (item, i)->
          t.cell(i, item)
        t.new-row!
      t.print! |> arr
    columns: (mask, lines)->
        columns = (if (mask ? "") is "" then "0" else mask).split(\,)
        pad = (str, len) ->
          ((if str is '' then ' ' else str) + Array(len).join(' ')).slice 0, len
        maxes = []
        lines |> p.map (.split(/[ ]+/))
              |> p.each (s)->
                   s.for-each (_, i)->
                      maxes[i] = Math.max(s[i].length, maxes[i] ? 0)
              |> p.map (.map((item, c)-> pad(item, maxes[c])).filter( (item, i)-> columns.index-of(i.to-string!) > -1).join (' '))
    concat: (mask, lines)->
      mask |> lines.join |> arr
    find: (mask, lines)->
      lines.map(one.filter mask).filter((v) -> v isnt null) |> p.head |> arr
    sort: (mask, lines)->
      lines |> p.sort
    reverse: (mask, lines)->
      lines |> p.reverse
    unique: (mask, lines)->
      lines |> p.unique
    head: (mask, lines)->
      lines |> p.head |> arr
    tail: (mask, lines)->
      lines |> p.tail
    last: (mask, lines)->
      lines |> p.last |> arr
    take: (mask, lines)->
      lines |> p.take mask
    drop: (mask, lines)->
      lines |> p.drop mask
    count: (mask, lines)->
      lines |> (.length) |> arr
    at: (mask, lines)->
      lines |> p.at mask |> arr
    maximum: (mask, lines)->
      lines |> p.maximum |> arr
    minimum: (mask, lines)->
      lines |> p.minimum |> arr
    sum: (mask, lines)->
      lines |> p.sum |> arr
    average: (mask, lines)-> 
      lines |> p.average |> arr
  .service \one, ->
    nsh =  require \node-syntaxhighlighter
    require \colors
    fs = require \fs
    content: (mask, input)->
      path = process.cwd! + \/ + input
      if fs.exists-sync path
         fs.read-file-sync(input).to-string \utf8
      else "file '#path' not exists"
    filter: (mask, input)-->
      if (mask ? "") is ""
        return if (input ? "") is "" then null else input
      if mask.index-of('content:') is 0
        input = fs.read-file-sync(input).to-string(\utf8)
        mask = mask.replace('content:', '')
      if input.match(mask)
        input.split(mask).join(mask.yellow)
      else 
        null
    upper: (mask, input)->
      input.to-upper-case!
    lower: (mask, input)->
      input.to-lowe-case!
    length: (mask, input)->
      input.length
    replace: (mask, input)->
      keys = mask.split(\,)
      input.split(keys.0).join(keys.1)
    trim: (mask, input)->
      String(input).replace(/^\s+|\s+$/g, '')
    remove: (mask, input)->
      input.split(mask).join("")
    map: (mask, input)->
      if (mask ? "") is ""
        return ""
      input.match(mask)?0 ? ""
    append: (mask, input)->
      if (mask ? "") is ""
        return input
      mask.split(\*).map(-> it.yellow).join(input)
  .service \emit, ->
    child_process = require(\child_process)
    glob = require \glob
    exec: (mask, input, callback)->
      exec = child_process.exec
      child = exec input, (error, stdout, stderr)->
          callback [stdout]
    glob: (mask)->
      glob mask, (files)->
        callback files
        process.exit 0
  .run (one, all, utils, emit)->
    cmd = process.argv.1.match(/[a-z]+$/i).0
    argv = process.argv.2
    readline = require \readline
    rl = readline.create-interface do
      input: process.stdin
      output: process.stdout
      terminal: no
    print = (res)->
      console.log(res) if res?
    print-lines = (items)->
      items.for-each(print)
    lines = []
    rl.on \line, (line)->
      lines.push(line) if all[cmd]?
      emit[cmd]?(argv, line, print-lines)
      print one[cmd]?(argv,line)
    rl.on \close, ->
      all[cmd]?(argv, lines)?for-each(print)
        
      
