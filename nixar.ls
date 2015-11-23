module.exports = (cmd)->
  process.title = cmd
  require \xonom
    .service \start, ->
    .run ->
      require \colors
    .service \p, ->
      require \prelude-ls
    .service \repo, ->
      commands: []
    .service \parser, (p)->
      numbers: (mask, last)->
        return [0] if (mask ? "") is ""
        index = (str)->
          str |> parse-int |> (-> it - 1)
        transform = (str)->
          get-int = (str)->
            | str is \first => 0
            | str is \last => last
            | _ => index str
          args = 
             str |> p.split \- 
                 |> p.map -> get-int it
          res =
            | args.length < 2 => get-int str
            | _ => [args.0 to args.1]
          res
        mask |> p.split(/[ ]+/)
             |> p.map transform
             |> p.flatten
    .service \cat, ->
      compile: ->
        fs = require \fs
        moment = require \moment
        nsh = require \node-syntaxhighlighter
        hl = require(\highlight).Highlight
        parser = require \html-to-json
        highlight = (code, type, callback) ->
          language = nsh.get-language(type, no)
          if language? 
            process = (item) ->
              type = if item.attribs then item.attribs[\class] else \text
              children = (color)->
                content = item.children.map(process)
                lines = if color? then content.map(-> it[color]) else content
                if lines.0 is null then null else lines.join("")
              switch type?match(/^[a-z]+/)?0
                when \text
                  return null if item.data isnt " " and item.parent?attribs?class?match(/^[a-z]+/)?0 is 'line'
                  item.data
                when \gutter 
                  children \blue
                when \code
                  children \green
                when \keyword
                  children \green
                when \plain
                  children!
                when \line
                  data = children!
                  if data isnt null
                    data + \\n
                  else ""
                when ''
                  children!
                else
                  children \yellow
            parser.parse nsh.highlight(code, language), (err, data) ->
                res = process(data.root!.0)
                callback res.substr(0, res.last-index-of(\\n))
          else 
              replacer = (str)->
                type = str.match('class="([a-z]+)"').1
                value = str.match(">([^<]+)<").1
                switch type
                  case \keyword
                    value.green
                  case \string
                    value.yellow
                  case \number
                    value.magenta
                  else
                    value
              callback hl(code).replace(/<\/?[a-z]+[^>]*>[^<]+<\/[^>]+>/g, replacer)
        es = require \event-stream
        pictureTube = require \picture-tube
        
        (mask, input, callback)->
          path = process.cwd! + \/ + input
          extension = path.match(/[a-z]+$/)?0
          lines = ->
            fs.read-file-sync(input).to-string(\utf8).split(/\n/)
          if !fs.exists-sync(path)
             callback ["file '#path' not exists"]
             return
          stats = fs.lstat-sync(path)
          if !stats.is-file!
            callback ["'#path' is not a file"]
          else if (mask ? "") isnt ""
            callback do 
              switch mask
                case \lines
                  lines!.map(-> "#input ".yellow + it)
                case \modified
                  ["#input ".yellow + moment(moment!).diff(stats[\mtime], \seconds).to-string! + ' seconds ago'.gray + ' ' + stats[\mtime] ]
                case \created
                  ["#input ".yellow + moment(moment!).diff(stats[\ctime], \seconds).to-string! + ' seconds ago'.gray + ' ' + stats[\ctime] ]
                case \size
                  size = parse-int stats[\size]
                  colored = (num, w)->
                    if num > 0 then "#num #w" else "#num #w".gray
                  arr = 
                      * "#input".yellow
                      * colored(size, "b")
                      * "/".gray
                      * colored(Math.round( size / 1024 ), \kb)
                      * "/".gray
                      * colored(Math.round( size / 1024^2 ), \mb)
                      * "/".gray
                      * colored(Math.round( size / 1024^3 ), \gb)
                  [arr.join(' ')]
                else 'mask is not supported'
          else if extension isnt \png
            highlight lines!.join("\n"), extension, (data)->
               callback [data]
          else
            res = []
            tube = new picture-tube!
            print = (data)->
               res.push data.to-string!
            end = ->
               callback [res.join('')]
               res.length = 0
            fs.create-read-stream(input).pipe(tube).pipe(es.through(print, end))
    .run "#{__dirname}/compiled-commands/*.js"
    .run (repo, p)->
      jargs = 
        require('yargs')
          .completion \completion , (current, argv)->
              ['foo','bar']
          .argv
      #console.log jargs._.join(' ')
      #cmd = process.argv.1.match(/[a-z]+$/i).0
      argv = jargs._.join(' ')
      #console.log \cmd, cmd
      #console.log process.mainModule
      lines = []
      print = (res)->
        console.log(res) if res?
      print-lines = (items)->
        items?for-each(print)
      const commands =
          repo.commands
      commands |> p.filter -> it.aliases? and it.enabled
               |> p.map (com)-> com.aliases.map(->  name: it, compile: com.compile, input: com.input, output: com.output )
               |> p.flatten
               |> p.each commands~push
      
      build = (type)->
             commands |> p.filter(-> it.enabled)
                      |> p.filter(-> "#{it.input}-#{it.output}" is type)
                      |> p.map(-> [it.name, it.compile!] ) 
                      |> p.pairs-to-obj
      nothing-lines = build \nothing-lines
      line-lines = build \line-lines
      line-line = build \line-line
      lines-lines = build \lines-lines
      lines-line  = build \lines-line
      
      if nothing-lines[cmd]?
        nothing-lines[cmd]?(null, argv, print-lines)
        process.exit 0
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
        process.exit 0