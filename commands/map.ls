module.exports = (repo)->
  repo.commands.push do
    name: "map"
    desc: "Transform line"
    input: \line
    output: \line
    enabled: yes
    doc: 
      examples: 
        * ''
        ...
    compile: ->
      (mask, input)->
        if (mask ? "") is ""
          return input
        mask.split(\*).map(-> it.yellow).join(input)