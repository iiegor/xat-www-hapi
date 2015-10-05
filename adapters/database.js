var mysql = require('mysql'),
  connection;

var database = module.exports = function constructDatabase() {
  if (connection) return connection;

  connection = mysql.createConnection({
    host: process.env.MYSQL_HOST,
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_PASSWORD,
    database: process.env.MYSQL_DATABASE
  });

  return connection;
}