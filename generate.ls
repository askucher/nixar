fs = require \fs
glob = require \glob
p = require \prelude-ls
is-file= (name)->
  fs.exists-sync(name) and fs.lstat-sync(name).is-file!

update-json = (path, update)->
  file = if is-file(path) then require(path) else {}
  save = ->
    fs.write-file-sync(path, json, \utf8)
  update file, save
  json = JSON.stringify(file, null, 4)
  save!

files = glob.sync \compiled-commands/*

update-json do 
    * \./package.json
    * (model)->
         name = (filename)->
             filename.match("([a-z]+).[^.]+$").1
         ref = ->
            "./refs/#it"
         names =
             files |> p.map name
         names.for-each (it)->
             fs.write-file-sync do 
                *ref it
                * "#!/usr/bin/env node\nrequire('../nixar.js')('#it')"
                * \utf8
         model.bin = 
             names |> p.map (-> [it, ref it])
                   |> p.pairs-to-obj