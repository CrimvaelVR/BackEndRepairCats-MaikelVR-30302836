//Conexion con database

const {conexion} = require('./fuente/sqlconexion.js')

conexion()

var express = require('express');
var path = require('path');
var app = express();
var morgan = require('morgan');

var formcontactoRoutes = require('./routes/formcontacto'); ////IMPORTAR RUTAS


//CONFIGURACIONES DEL SERVIDOR(BASICAS)

app.set('port', process.env.PORT || 3000) //Que use el puerto del sistema, de lo contrario que use el 3000


app.set('views', path.join(__dirname, 'views')); //Asignar el motor de vistas
app.set('view engine', 'ejs');

///MIDDLEWARE PARA EJECUTARSE ANTES DE LAS PETICIONES ANTES DE LOS USUARIOS

app.use(morgan('dev')); //Muestra mensajes por consola sencillos




app.use(express.json()); ///ENTENDER JSON

app.use(express.urlencoded({ extended: false })); //↓ ENTIENDE LOS DATOS QUE LLEGAN DESDE EL FORMULARIO (ESTOS DATOS SON SENCILLOS, COMO TEXTOS O DATOS QUE VIENEN DESDE INPUTS) ↓


//ARCHIVOS ESTATICOS, tal vez los use bien a futuro

app.use(express.static(path.join(__dirname, 'public')));




app.use('/api/contacto', formcontactoRoutes); /// COMUNICAR RUTAS CON EL SERVER



//PRUEBA
app.listen(3000, () => {
    console.log('El server está activo en el puerto 3000')
})



app.use(function(req, res, next) {
    next(createError(404));
});
  
// error handler
  
app.use(function(err, req, res, next) {
    // set locals, only providing error in development
    res.locals.message = err.message;
    res.locals.error = req.app.get('env') === 'development' ? err : {};
  
    // render the error page
    res.status(err.status || 500);
    res.render('error');
});
  

module.exports = app;