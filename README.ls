require \xonom
    .service \repo, ->
        commands: []
        docs: []
    .run "#{__dirname}/compiled-commands/*.js"
    .service \p, ->
      require \prelude-ls
    .run (repo, p)->
      lines = []
      $ = lines~push
      $ '# New shell commands'
      $ 'Joyable equivalents for existent linux commands'
      $ ''
      $ 'npm install -g nixar'
      $ ''
      $ '###Commands'
      $ ''
      repo.commands.for-each (cmd)->
          $ "#### #{cmd.name}"
          $ "#{cmd.desc}"
      console.log lines.join('\n')
      require('fs').writeFileSync('README.md', lines.join(\\n), \utf8)