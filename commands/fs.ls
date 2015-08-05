module.exports = (repo, p)->
  repo.commands.push do
    name: "fs"
    desc: "Find by mask *.* or **/*.* or */"
    input: \nothing
    output: \lines
    enabled: yes
    compile: ->
      glob = require \glob
      (mask, callback)->
        transform-mask = 
           | mask is 'all' => '**/*'
           | mask is 'all-filenames' => '**/*'
           | (mask ? '') is '' => "*"
           | _ => mask
        transform = (name)->
           | mask is 'all-filenames' => name.match(/[^/]+$/).0
           | _ => name
        glob transform-mask, {}, (err, files)->
          if err?
            console.log err.red
          else
            files |> p.map transform
                  |> callback