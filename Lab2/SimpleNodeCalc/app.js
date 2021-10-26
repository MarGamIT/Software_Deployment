const express = require('express')
const bodyparser = require('body-parser')
const app = express()

app.get('', (request, resp) => {
    resp.send('Lab 2')
})

app.listen(3000, (resp) => {
    console.log("server startet on port 3000")
})