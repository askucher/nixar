module.exports = (repo)->
  repo.commands.push do
    name: "lower"
    desc: "make lowercase"
    input: \line
    output: \line
    enabled: yes
    compile: ->
      (mask, input)->
        input.to-lowe-case!