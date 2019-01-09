components = [
  require './hello_world'
  require './summary'
]

export default (vue) ->
  vue.component(com.name, com) for com in \
    (m.default for m in components when m?.default?)
