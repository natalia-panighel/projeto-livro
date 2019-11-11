const express = require('express');
const server = express();
const handlebars = require('express-handlebars');
const path = require ('path');

server.use(express.static(path.join(__dirname, '/public')));
server.engine('handlebars', handlebars({defaultLayout: 'main'}));
server.set('view engine', 'handlebars');

server.get('/', function(rec, res){
    res.render('Pagina_Inicial')
});

server.get('/cadLivro', function(rec, res){
    res.render('Cadastro_Livro')
});

server.get('/cadUsuario', function(rec, res){
    res.render('Cadastro_Usuario')
});

server.get('/avaliacoes', function(rec, res){
    res.render('Avaliacoes')
});

server.get('/chat', function(rec, res){
    res.render('Chat')
});

server.listen(3000); 