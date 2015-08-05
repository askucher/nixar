module.exports = (repo)->
  repo.commands.push do
    name: "split"
    desc: "Calculate minimum integer"
    input: \line
    output: \lines
    enabled: yes
    compile: ->
      (mask, input, callback)->
         input.split(mask) |> callback