var express = require("express");
var mysql = require('mysql');
var app = express();

var library = mysql.createLibrary({
    connectionLimit: 100, //important
    host: 'localhost',
    user: 'root',
    password: '1234',
    database: 'Library',
    debug: false
});

function connect_database(req, res) {

    library.getConnection(function (err, connection) {
        if (err) {
            res.json({
                "code": 100,
                "status": "Error in connection database"
            });
            return;
        }

        console.log('connected as id ' + connection.threadId);

        connection.query("select * from Book", function (err, rows) {
            connection.release();
            if (!err) {
                res.json(rows);
            }
        });


        connection.on('error', function (err) {
            res.json({
                "code": 100,
                "status": "Error in connection database"
            });
            return;
        });
    });


}


app.get("/", function (req, res) {
    -
    connect_database(req, res);
});

app.listen(1234);
