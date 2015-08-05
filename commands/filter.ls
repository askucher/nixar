module.exports = (repo)->
  repo.commands.push do
    name: "filter"
    desc: "Filter lines"
    input: \line
    output: \line
    enabled: yes
    compile: ->
      (mask, input)->
        if (mask ? "") is ""
          return if (input ? "") is "" then null else input
        if input.match(mask)
          input.split(mask).join(mask.yellow)
        else 
          null