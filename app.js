const express = require('express');
const db = require('./db');

const app = express();

app.set('view engine', 'ejs'); 
app.use(express.static('public')); 
app.use(express.urlencoded({ extended: true }));

app.get('/', (req, res) => {
    res.render('inicio');
})

app.get('/animais', (req, res) => {
    res.render('animais');
})

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`🚀 Servidor rodando em: http://localhost:${PORT}`);
});