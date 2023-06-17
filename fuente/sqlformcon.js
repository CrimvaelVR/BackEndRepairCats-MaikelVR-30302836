const mysql = require('mysql');
const { select } = require('underscore');

const conection = mysql.createConnection({
    host: process.env.HOST,
    user: process.env.USER,
    password: process.env.PASSWORD,
    database: process.env.DATABASE
})

class formFuente {
    RegistrarForm(datos){
        let nombrep = '"'+datos.Nombre_Persona+'"'
        let correo = '"'+datos.Correo+'"'
        let telefono = '"'+datos.Telefono+'"'
        let mensaje = '"'+datos.Mensaje+'"'



        console.log(datos)

        return new Promise((resolve, reject) => {
            conection.query('INSERT INTO datosform (Nombre_Persona,Correo, Telefono, Mensaje) VALUES (' +nombrep+ ', ' +correo+ ', ' +telefono+ ', ' +mensaje+ ')',
            function (error, results, fields){
                if(error) throw error;
                console.log('Se ha registrado su respuesta al formulario en el sistema');
                console.log(results);
                resolve(datos)
            }
        );
        })
    }


}

const formF = new formFuente ()

module.exports = formF;