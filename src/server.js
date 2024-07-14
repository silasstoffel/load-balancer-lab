const express = require('express')
const app = express()
const port = 3000
const { SERVER_NAME } = process.env
const server =  SERVER_NAME ?? 'undefined.server.name'


app.get('/', (_, res) => {
    const message = 'Hello'
    console.debug({ server, port, message })
    res.json({ server, port, message, date: new Date().toISOString() })
})

app.listen(port, () => {
    console.log(`APP running on ${port}`)
})