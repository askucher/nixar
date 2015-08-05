require \xonom
  .service \start, ->
  .run ->
    require \colors
  .service \p, ->
    require \prelude-ls
  .service \repo, ->
    commands: []
  .run "#{__dirname}/compiled-commands/*.js"
  .run (repo, p)->
    cmd = process.argv.1.match(/[a-z]+$/i).0
    argv = process.argv.2
    lines = []
    print = (res)->
      console.log(res) if res?
    print-lines = (items)->
      items?for-each(print)
    build = (type)->
      repo.commands |> p.filter(-> it.enabled)
                    |> p.filter(-> "#{it.input}-#{it.output}" is type)
                    |> p.map(-> [it.name, it.compile!]) 
                    |> p.pairs-to-obj
    nothing-lines = build \nothing-lines
    line-lines = build \line-lines
    line-line = build \line-line
    lines-lines = build \lines-lines
    lines-line  = build \lines-line
    
    if nothing-lines[cmd]?
      nothing-lines[cmd]?(argv, print-lines)
      return
    readline = require \readline
    rl = readline.create-interface do
      input: process.stdin
      output: process.stdout
      terminal: no
    rl.on \line, (line)->
      if line-lines[cmd]? or line-line[cmd]?
        line-lines[cmd]?(argv, line, print-lines)
        print line-line[cmd]?(argv,line)
      else
        lines.push(line)
    rl.on \close, ->
      lines-lines[cmd]?(argv, lines)?for-each(print)
      res = lines-line[cmd]?(argv, lines)
      if res?
        print res