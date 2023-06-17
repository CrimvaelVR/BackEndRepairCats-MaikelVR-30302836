const mysql = require('mysql');
const { select } = require('underscore');

const conection = mysql.createConnection({
    host: process.env.HOST,
    user: process.env.USER,
    password: process.env.PASSWORD,
    database: process.env.DATABASE
})

class galeriaFuente {
  listarP() {
    return new Promise((resolve, reject) => {
      console.log('Funciona el SQL De Listar los productos');
      conection.query('SELECT * from `productos`', function (error, results, fields) {
        if (error) reject(error);
        console.log(results);
        resolve(results);
      });
    });
  }
}

const galeriaF = new galeriaFuente ()

module.exports = galeriaF;