const express = require('express')
const app = express()
const port = 5000
const path = require('path')

// enable make requests CORS
const cors = require('cors');
app.use(cors({ origin: ['http://localhost:3000'], credentials: true }));


// process post data from form:
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

// handle static file
app.use(express.static('./public'));
app.use(express.static(path.join(__dirname, 'public')));
console.log('public', path.join(__dirname, 'public'));

const route = require('./routes');
const { log } = require('console');
route(app);

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})