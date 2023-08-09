const express = require('express')
const app = express()
const port = 5000

// enable make requests CORS
const cors = require('cors');
app.use(cors());

// process post data from form:
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

const route = require('./routes');
route(app);

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})