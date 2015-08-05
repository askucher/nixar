module.exports = (repo)->
  repo.commands.push do
    name: "exclude"
    desc: "Filter lines"
    input: \line
    output: \line
    enabled: yes
    compile: ->
      (mask, input)->
        if (mask ? "") is ""
          return if (input ? "") is "" then null else input
        if input.match(mask)
          null
        else 
          input