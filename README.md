## vue-coffee
> using CoffeeScript2 in vue project.
> write less code, better code.

<br/>

### Try coffee

1. init project: `npx @fine.sh/cs init`

2. start: `npm start`

<br/>

### How to

  - render for JSX:
      ```
      # data: () => ({ count: 0 })
      data: ->
        count: 0

      # handle: function() { this.count = this.count + 5 }
      handle: ->
        @count = @count + 5

      # '@' is 'this'
      <button on-click={@handle}>click me: {@count}</button><br/>
      ```

  - render with methods:
      ```
      # hello: function(h) { return (<span>hello world.</span>) }
      hello: (h) ->
        <span>hello world.</span>

      <p>{@hello(h)}</p>
      ```

<br/>

### Learn more

  - [CoffeeScript docs](https://coffeescript.org/)

  - [use JSX in vue](https://github.com/vuejs/babel-plugin-transform-vue-jsx#usage)

<br/>

### Examples
[online examples](https://vue-coffee.js.org/)

<br/>

### LICENSE

[**MIT**](LICENSE)
