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
        mask = mask.replace(/^last /,"")
        console.log mask, last
        index = 
          (if last then index.last-index-of else input.index-of)(mask)
        if index > -1
          input.substr(index + mask.length)
        else 
          input