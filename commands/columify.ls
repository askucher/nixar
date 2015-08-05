module.exports = (repo)->
  repo.commands.push do
    name: "columify"
    desc: "Create columns from line based on regexp groups"
    input: \lines
    output: \lines
    enabled: yes
    compile: ->
      Table = require \easy-table
      (mask, lines)->
        if (mask ? "") is ""
          return ""
        t = new Table
        lines.forEach (product)->
          product.match (mask).forEach (item, i)->
            t.cell(i, item)
          t.newRow!
        callback t.print!