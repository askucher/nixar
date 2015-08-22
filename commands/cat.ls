module.exports = (repo, cat)->
  repo.commands.push do
    name: "cat"
    desc: "Print file, file lines, file created, file modified"
    input: \nothing
    output: \lines
    enabled: yes
    doc: 
      examples: 
        * ''
        ...
    compile: cat.compile