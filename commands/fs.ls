module.exports = (repo, p)->
  repo.commands.push do
    name: "fs"
    desc: "Find by mask *.* or **/*.* or */ or all"
    input: \nothing
    output: \lines
    enabled: yes
    doc: 
      examples: 
        * ''
        ...
    compile: ->
      glob = require \glob-all
      (skip, mask, callback)->
        fs = require \fs
        path = require \path
        transform-mask = 
           | mask.index-of(' ') > -1 => mask.split(' ')
           | mask is 'all' => ['**/*']
           | (mask ? '') is '' => ["*"]
           | _ => [mask]
        transform = (name)->
           is-dir = fs.lstat-sync(name).is-directory!
           base = path.basename name
           dir = (name)->
             name.yellow + \/
           res =
             | is-dir => dir name 
             | _ => name
           res
        glob transform-mask, { silent: yes, strict: no  }, (err, files)->
          if files?length > 0
            files |> p.map transform
                  |> callback