const express = require('express');

const compression = require("compression");

const app = express();

const port = process.env.PORT || 3000;

app.disable('x-powered-by');

app.use(compression());

app.use(express.static('public'));

app.get('/', (req, res) => {
   res.send('home')
});

app.use((req, res, next) => {
    res.status(404).send('404');
});

app.listen(port, () => console.log('Server started at port 80'))
