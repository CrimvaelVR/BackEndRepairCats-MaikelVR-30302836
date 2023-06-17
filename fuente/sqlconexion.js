///Conectar con la base de datos y luego exportarla al resto del sv, ademas de proteger los datos con dotenv

const mysql = require('mysql');
require('dotenv').config({path: ('./.env')});

const conection = mysql.createConnection({
    host: process.env.HOST,
    user: process.env.USER,
    password: process.env.PASSWORD,
    database: process.env.DATABASE
})

const conexion = () => {
    conection.connect((Err)=>{
        if(Err) throw Err
        console.log('La conexión con la base de datos ha sido exitosa')
    })
}


module.exports = {conexion}