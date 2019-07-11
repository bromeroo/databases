let express = require('express');
let mysql = require('mysql');
const app = express();
const PORT = 3000;

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'Belgium32',
  database: 'trial',
});

connection.connect(err => {
  if (err) {
    throw err;
  }
  console.log('connected as id ' + connection.threadId + ' ' + connection.state);
});

//Create Table
app.get('/createtable', (req, res) => {
  let posts =
    'CREATE TABLE posts(id int NOT NULL AUTO_INCREMENT, title varchar(250), body varchar(250), PRIMARY KEY (id)) ';
  connection.query(posts, (err, results, fields) => {
    if (err) throw err;
    console.log(res);
    res.send('Posts table created...');
  });
});

//Insert Table Row
app.get('/insert', (req, res) => {
  let row = 'insert into posts ( title, body) value ("From NodeJS app.js", "Lorem ipsum") ';
  connection.query(row, (err, results, fields) => {
    if (err) throw err;
    res.json('New row added with id number = ' + results.insertId);
  });
});

//Get All Posts
app.get('/selectall', (req, res) => {
  let select = 'SELECT * from posts';
  connection.query(select, (err, results, fields) => {
    if (err) throw err;
    console.log(results);

    res.json(results);
  });
});

//Get Spesific Post
app.get('/select/:id', (req, res) => {
  let selSps = 'SELECT * from posts where id = ? ';
  connection.query(selSps, req.params.id, (err, results, fields) => {
    if (err) {
      throw err;
    } else if (results === []) {
      res.send(`Nothing in the database with id number ${req.params.id}`);
    } else {
      console.log(typeof results, Boolean(results), results);
      res.send(results);
    }
  });
});

//Delete Row
app.get('/delete/:id', (req, res) => {
  let del = 'DELETE FROM posts where id = ?';

  connection.query(del, req.params.id, (err, results, fields) => {
    if (err) {
      throw err;
    } else if (results.affectedRows === 0) {
      res.send('There is nothing with id number = ' + req.params.id);
    } else if (results.affectedRows > 0) {
      res.send('The row with id number ' + req.params.id + ' ' + 'was deleted');
    }
  });
});

app.listen(PORT, () => {
  console.log('On Air');
});
