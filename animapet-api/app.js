var animais = require('./rotas/animais')
var usuarios = require('./rotas/usuarios')
const express = require('express')
const PORT = 3000
const HOST = '127.0.0.1'
const app = express()


app.use(express.json())

app.use('/animais', animais)
app.use('/usuarios', usuarios)

app.listen(PORT, HOST)
console.log(`Run http://${HOST}:${PORT}`)