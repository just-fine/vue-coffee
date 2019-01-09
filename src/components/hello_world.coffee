logo = require '../assets/coffee.svg'

export default
  name: 'hello-world'

  data: ->
    count: 0
    members: [
      'teacher toni'
      'teacher david'
    ]

  methods:
    handle: ->
      @count = @count + 5

    bookmark: (h) ->
      <img style="margin-bottom: -10px;" src={logo} width="30" height="30"/>

  render: (h) ->
    <div class="hack">
      <repo-summary/>
      <h1>my first app from CoffeeScript 2.</h1><br/>

      <p>{@bookmark(h)} <b>click counter</b></p>
      <button class="btn btn-default" on-click={@handle}>click me: {@count}</button><br/>
      <pre><code>
        methods: handle: -> @count = @count + 5
      </code></pre>
      <a href="https://coffeescript.org" target="_blank">learn more about coffee</a>
      <br/><br/><br/>

      <p>{@bookmark(h)} <b>render list</b></p>
      <p>rock barbers</p>
      <ul>{<li>{name}</li> for name in @members}</ul>
      <pre><code>
        {String('{<li>{name}</li> for name in @members}')}
      </code></pre>
      <a href="https://github.com/vuejs/babel-plugin-transform-vue-jsx#usage" target="_blank">learn more about jsx in vue</a>
      <br/><br/><br/>

      <p>{@bookmark(h)} <b>render with methods</b></p>
      <pre><code>
        <p>{String('bookmark: (h) -> <img src={logo} width="30" height="30"/>')}</p>
        <p>{String('{@bookmark(h)}')}</p>
      </code></pre>
      <br/><br/><br/>
      <hr/>
      This project is open-sourced on <a href="https://github.com/just-fine/vue-coffee">GitHub</a>
    </div>
