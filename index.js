var express = require('express');
var path = require('path');
var app = express();
var morgan = require('morgan');
var mysql = require('mysql');

var conexion = require('express-myconnection')


//CONFIGURACIONES DEL SERVIDOR(BASICAS)

//Que use el puerto del sistema, de lo contrario que use el 3000

app.set('port', process.env.PORT || 3000)


//Asignar el motor de vistas
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

///MIDDLEWARE PARA EJECUTARSE ANTES DE LAS PETICIONES ANTES DE LOS USUARIOS

app.use(morgan('dev')); //Muestra mensajes por consola sencillos

app.use(conexion(mysql, {
    host: 'localhost',
    user: 'root',
    password: '123456',
    port: 3306,
    database: 'repaircats'

}, 'single')); ///Establecer conexión con MYSQL



////IMPORTAR RUTAS

var formcontactoRoutes = require('./routes/formcontacto');


/// COMUNICAR RUTAS CON EL SERVER

app.use('/Contacto', formcontactoRoutes)

//ARCHIVOS ESTATICOS, tal vez los use bien a futuro

app.use(express.static(path.join(__dirname, 'public')));


//PRUEBA
app.listen(3000, () => {
    console.log('El server está activo en el puerto 3000')
})

