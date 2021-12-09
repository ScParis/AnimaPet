'use strict';
// Constants
const PORT = 8080;
const HOST = '0.0.0.0';
const express = require('express')
const cors = require('cors')
const bodyParser = require('body-parser')
const router = require('./config/routes');
const app = express()

var corsOptions = {
  orgim: '/',
  optionsSuccessStatus: 200,
}

app.use(express.json())
app.use(cors(corsOptions))
app.use(bodyParser.json())
app.use(router)
// para testar normal sem docker trocar app.listen(port, host) por app.listen(3000)
app.listen(PORT, HOST);

console.log(`Running on http://${HOST}:${PORT}`);