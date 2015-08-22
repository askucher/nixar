module.exports = (repo)->
  repo.commands.push do
    name: "table"
    desc: "Create columns from line based on separator"
    input: \lines
    output: \line
    enabled: yes
    doc: 
      examples: 
        * ''
        ...
    compile: ->
      Table = require \easy-table
      (mask, lines)->
        if (mask ? "") is ""
          return ""
        t = new Table
        lines.forEach (product)->
          product.split(mask)?forEach (item, i)->
            t.cell(i, item.replace(/[ ]/g,'_'))
          t.newRow!
        t.print!