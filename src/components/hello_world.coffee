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
      <img src={logo} width="30" height="30"/>

  render: (h) ->
    <div class="hack">
      <h1>my first app from CoffeeScript 2.</h1><br/>

      {@bookmark(h)}
      <h2>click counter</h2>
      <button class="btn btn-default" on-click={@handle}>click me: {@count}</button><br/>
      <pre><code>
        methods: handle: -> @count = @count + 5
      </code></pre>
      <a href="https://coffeescript.org" target="_blank">learn more about coffee</a>
      <br/><br/><br/><br/>

      {@bookmark(h)}
      <h2>render list</h2>
      <p>rock barbers</p>
      <ul>{<li>{name}</li> for name in @members}</ul>
      <pre><code>
        {String('{<li>{name}</li> for name in @members}')}
      </code></pre>
      <a href="https://github.com/vuejs/babel-plugin-transform-vue-jsx#usage" target="_blank">learn more about jsx in vue</a>
      <br/><br/><br/><br/>

      {@bookmark(h)}
      <h2>render with methods</h2>
      <pre><code>
        <p>{String('bookmark: (h) -> <img src={logo} width="30" height="30"/>')}</p>
        <p>{String('{@bookmark(h)}')}</p>
      </code></pre>
      <br/><br/><br/>
    </div>
