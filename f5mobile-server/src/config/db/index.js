const Pool = require('pg').Pool;

const pool = new Pool({
  user: "postgres",
  host: "103.107.183.197",
  database: "f5mobile",
  password: "PypM3322",
  port: 5432,
});

module.exports = pool;