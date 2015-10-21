module.exports = (repo)->
  repo.commands.push do
    name: "after"
    desc: "Print everything after mask"
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
        str = mask.replace(/^last /,"")
        index = 
          (if last then index.last-index-of else input.index-of)(str)
        if index > -1
          input.substr(index + str.length)
        else 
          input