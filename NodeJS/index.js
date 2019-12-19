const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const mysql = require('mysql');

// parse application/json
app.use(bodyParser.json());

// create database connection
const conn = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	password: '',
	database: 'rent'
});

// connect to database
conn.connect((err) =>{
	if(err) throw err;
	console.log('MySQL Connected...');
});

// Tampilkan semua harga
app.get('/api/price',(req, res) => {
	let sql = 'SELECT * FROM price';
	let query = conn.query(sql, (err, results) => {
		if(err) throw err;
		res.send(JSON.stringify({'status': 200, 'error': null, 'response': results}));
	});
});

//  tampilkan data harga berdasarkan id
app.get('/api/price/:id', (req, res) => {
	let sql = 'SELECT * FROM price WHERE id = '+req.params.id;
	let query = conn.query(sql, (err, results) => {
		if(err) throw err;
		res.send(JSON.stringify({'status': 200, 'error': null, 'response': results}));
	});
});

// tambahkan data harga baru
app.post('/api/price',(req, res) => {
	let name = req.body.name;
	let category = req.body.category;
	let price = req.body.price;
	// let data = {name: req.body.name, category: req.body.category, price: req.body.price};
	// console.log(name,category,price);
	let sql = 'INSERT INTO price VALUES ("","'+name+'","'+category+'","'+price+'")';
	let query = conn.query(sql,(err, results) => {
		if(err) throw err;
		res.send(JSON.stringify({'status': 200, 'error': null, 'response': results}));
	});
});

// edit data harga berdasarkan id
app.put('/api/price/:id',(req, res) => {
	let sql = 'UPDATE price SET name="'+req.body.name+'", category="'+req.body.category+'", price="'+req.body.price+'" WHERE id="'+req.params.id+'"';
	let query = conn.query(sql, (err, results) => {
		if(err) throw err;
		res.send(JSON.stringify({'status': 200, 'error': null, 'response': results}));
	});
});

// delete data price berdasarkan id
app.delete('/api/price/:id', (req, res) => {
	let sql = 'DELETE FROM price WHERE id='+req.params.id;
	let query = conn.query(sql, (err, results) => {
		if(err) throw err;
		res.send(JSON.stringify({'status': 200, 'error': null, 'response': results}));
	});
});

// server listening
app.listen(3000,() =>{
	console.log('Server started on port 3000...');
});