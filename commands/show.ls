module.exports = (repo, cat)->
  repo.commands.push do
    name: "show"
    desc: "Prints file, file lines, file created date, file modified date"
    input: \nothing
    output: \lines
    enabled: yes
    doc: 
      examples: 
        * ''
        ...
    compile: cat.compile