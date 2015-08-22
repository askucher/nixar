module.exports = (repo)->
  repo.commands.push do
    name: "clipboard"
    desc: "Copy/Paste data into clipboard"
    input: \lines
    output: \lines
    enabled: no
    doc: 
      examples: 
        * ''
        ...
    compile: ->
      clipboard = require \clipboard
      (mask, input)->
        clipboard.write(input)
        clipboard.read!