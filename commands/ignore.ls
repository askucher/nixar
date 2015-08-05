module.exports = (repo, p)->
  repo.commands.push do
    name: "ignore"
    desc: "Ignore output"
    input: \line
    output: \line
    enabled: yes
    compile: ->
      (mask, line)->
        null