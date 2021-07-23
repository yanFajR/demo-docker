var mysql = require('mysql');
var flash = require('express-flash');
var session = require('express-session');
var express = require('express');
const app = express();
const server = require('http').Server(app);

var connection = mysql.createConnection({
    host: process.env.DATABASE,
    user:'root',
    password: process.env.PASSDB,
    database:'dbharga'
});
connection.connect(function(error){
    if(!!error) {
        console.log(error);
    } else {
        console.log('Connected..!');
    }
});

app.use(session({ 
    cookie: { maxAge: 60000 },
    store: new session.MemoryStore,
    saveUninitialized: true,
    resave: 'true',
    secret: 'secret'
}))


app.use(flash());

app.set('view engine', 'ejs')

app.get('/', function(req, res, next) {
    connection.query('SELECT * FROM hargabarang ORDER BY id asc',function(err,rows)     {
        if(err) {
            req.flash('error', err);
            // render to views/books/index.ejs
            res.render('index',{data:''});   
        } else {
            // render to views/books/index.ejs
            res.render('index',{data:rows});
        }
    });
})

server.listen(3000);
