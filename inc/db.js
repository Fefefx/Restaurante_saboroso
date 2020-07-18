const mysql = require('mysql2');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'user',
    database: 'saboroso',
    password: 'PardimKey1998',
    multipleStatements: true
});

module.exports = connection;