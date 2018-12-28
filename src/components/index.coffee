components = [
  require './hello_world'
  require './summary'
]

module.exports = (vue) ->
  vue.component(com.name, com) for com in \
    (m.default for m in components when m?.default isnt undefined)
