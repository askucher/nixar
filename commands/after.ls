module.exports = (repo)->
  repo.commands.push do
    name: "after"
    desc: "Prints everything after [mask]. Has option 'after last [mask]'"
    input: \line
    output: \line
    enabled: yes
    doc: 
      examples: 
        * ''
        ...
    compile: ->
      (mask, input)->
        last = mask.index-of(\last) is 0
        str = mask.replace(/^last /g,"")
        index = 
          if last then input.last-index-of(str) else input.index-of(str)
        if index > -1
          input.substr(index + str.length)
        else 
          input