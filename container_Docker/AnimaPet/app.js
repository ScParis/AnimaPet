const Koa = require('koa')

const app = new Koa()

app.use((ctx) => {
ctx.body = '<h1> first node.js Docker app here! </h1>'

})

app.listen ('3000')