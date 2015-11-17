module.exports = (repo)->
  repo.commands.push do
    name: "exclude"
    desc: "Excludes line specified by mask"
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
          return if (input ? "") is "" then null else input
        if input.match(mask)
          null
        else 
          input