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
      $ '# Modern shell commands'
      $ 'Handy alternative to old school linux commands, implemented in functional wayФ
      $ ''
      $ '![Nixar](http://content.screencast.com/users/a.stegno/folders/Jing/media/cf29f8c0-b343-4692-9e05-1ff44f37f48d/00000255.png)'
      $ ''
      $ 'npm install -g nixar'
      $ ''
      $ '## Commands'
      $ 'See full docs [here](http://askucher.github.io/nixarweb/#/doc)'
      $ ''
      repo.commands.for-each (cmd)->
          $ "#### #{cmd.name}"
          $ "#{cmd.desc}"
      console.log lines.join('\n')
      require('fs').writeFileSync('README.md', lines.join(\\n), \utf8)
