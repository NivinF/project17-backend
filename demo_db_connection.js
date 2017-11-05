var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "project17"
});

con.connect(function(err) {
  if (err) throw err;
  con.query("SELECT * FROM members", function (err, result, fields) {
    if (err) throw err;
    console.log(result);
  });
});