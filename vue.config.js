module.exports = {
  productionSourceMap: false,
  css: {
    modules: true,
    loaderOptions: {
      css: {
        localIdentName: '[name]-[hash]',
        camelCase: 'only',
      },
    },
  },
}

