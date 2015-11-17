module.exports = (repo)->
  repo.commands.push do
    name: "mark"
    desc: "Highlights lines' parts according to the provided mask"
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
          input.split(mask).join(mask.green)
        else 
          input