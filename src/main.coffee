import vue from 'vue'
import app from './app'
(require './components') vue

vue.config?.productionTip = false

css = document.createElement 'link'
css.setAttribute key, val for key, val of \
  item for item in [
    rel: 'stylesheet'
    type: 'text/css'
    href: 'https://cdn.jsdelivr.net/npm/hack@latest/dist/hack.css'
  ]
document.head.appendChild css

new vue
  el: '#app'
  render: (h) -> h app
