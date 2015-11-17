module.exports = (repo)->
  repo.commands.push do
    name: "upper"
    desc: "Convert characters to uppercase"
    input: \line
    output: \line
    enabled: yes
    doc: 
      examples: 
        * ''
        ...
    compile: ->
      (mask, input)->
        (input ? "").to-upper-case!