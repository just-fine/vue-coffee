import vue from 'vue'
import app from './app'
import component from './components'
component vue

vue.config?.productionTip = false

new vue
  el: '#app'
  render: (h) -> h app
