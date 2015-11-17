module.exports = (repo)->
  repo.commands.push do
    name: "trim"
    desc: "Remove spaces from start and end of line. But if you profide the substring it will remove it from start and end of line"
    input: \line 
    output: \line
    enabled: yes
    doc: 
      examples: 
        * ''
        ...
    compile: ->
      (mask, input)->
         mask = if (mask ? "") is "" then "\\s+" else mask
         re = new RegExp("^#{mask}|#{mask}$","g")
         String(input).replace(re, '')