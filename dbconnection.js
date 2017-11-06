//Database connection
var mysql=require('mysql');
var connection=mysql.createPool({

host:'localhost',
user:'root',
password:'',
database:'project17'

});

module.exports=connection;