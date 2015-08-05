module.exports = (repo)->
  repo.commands.push do
    name: "file"
    desc: "Print file content"
    input: \line
    output: \lines
    enabled: yes
    compile: ->
      fs = require \fs
      (mask, input, callback)->
        path = process.cwd! + \/ + input
        if fs.exists-sync(path) and fs.lstat-sync(path).is-file!
           lines = fs.read-file-sync(input).to-string(\utf8).split(/\n/)
           res = do
               switch mask 
                  case "lines"
                    lines.map(-> "#input: ".yellow + it)
                  else
                    lines
           callback res
        else ["file '#path' not exists"]