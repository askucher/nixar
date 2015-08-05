module.exports = (repo)->
  repo.commands.push do
    name: "concat"
    desc: "Concatenate lines into single line"
    input: \lines
    output: \line
    enabled: yes
    compile: ->
      (mask, lines)->
         lines.join(mask)