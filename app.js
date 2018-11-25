const express = require('express');

const app = express();

app.get('/', (req, res) => {
    console.log(req)
    res.send('Hello World')
})

app.listen(3000, () => console.log("listenning on port: ", 3000))