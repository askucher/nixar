module.exports = (repo)->
  repo.commands.push do
    name: \turn
    desc: "Rotate the table. Convert rows to cols and cols to rows. This command can replace concat and split commands"
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
         table = /[ ]+/
         config = if (mask ? "") is "" then table else mask
         arr = lines.map(-> it.split(config))
         newarr = []
         for i of arr
           for j of arr[i]
             if typeof newarr[j] is \undefined
               newarr[j] = []
             newarr[j][i] = arr[i][j]
         t = new Table
         switch config
            case table
              newarr.forEach (product)->
                product.forEach (item, i)->
                    t.cell(i, item.replace(/[ ]/g,'_'))
                t.new-row!
              t.print!.trim!
            else 
              newarr.map(-> it.join(config) ).join( \\n)