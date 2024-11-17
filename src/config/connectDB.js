const mysql = require('mysql2/promise');

const connection = mysql.createPool({
    host: 'sql12.freesqldatabase.com',
    user: 'sql12745196',
    password: 'HGYzlpDWe9',
    database: 'sql12745196',
    port: '3306'
   
});

export default connection;