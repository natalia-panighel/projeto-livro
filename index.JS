const express = require('express');
const server = express();
const handlebars = require('express-handlebars');

server.engine('handlebars', handlebars({defaultLayout: 'main'}));
server.set('view engine', 'handlebars');

server.get('/', function(rec, res){
    res.render('home')
});

server.get('/contato', function(rec, res){
    res.render('contato')
});

server.get('/servico', function(rec, res){
    res.render('servico')
});

server.listen(3000); 