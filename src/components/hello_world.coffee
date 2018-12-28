
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

  render: (h) ->
    <div class="hack">
      <h1>my first app from CoffeeScript 2.</h1><br/>

      <h2>click counter</h2>
      <button class="btn btn-default" on-click={@handle}>click me: {@count}</button><br/>
      <pre><code>
        methods: handle: -> @count = @count + 5
      </code></pre><br/>
      <a href="https://coffeescript.org" target="_blank">learn more about coffee</a>
      <br/><br/><br/><br/>

      <h2>render list</h2>
      <p>rock barbers</p>
      <ul>{<li>{name}</li> for name in @members}</ul>
      <pre><code>
        {String('{<li>{name}</li> for name in @members}')}
      </code></pre><br/>
    </div>
