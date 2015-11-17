module.exports = (repo, cat)->
  repo.commands.push do
    name: "content"
    desc: "Prints content, content lines, content created date, content modified date, content size"
    input: \line
    output: \lines
    enabled: yes
    doc: 
      examples:
        * ''
        ...
    compile: cat.compile