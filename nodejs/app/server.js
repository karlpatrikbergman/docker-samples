'use strict';
const express = require('express');
const PORT = 8080;
const app = express();

app.get('/', function (req, res) {
    res.send('Iron Maiden is true New Wave of British Heavy Metal!')
})

app.listen(PORT)
console.log('Running on http://localhost:' + PORT);