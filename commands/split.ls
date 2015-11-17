module.exports = (repo, p)->
  repo.commands.push do
    name: "split"
    desc: "Splits line into lines"
    input: \line
    output: \lines
    enabled: yes
    doc: 
      examples: 
        * ''
        ...
    compile: ->
      (mask, line, callback)->
        callback line.split(mask)
       