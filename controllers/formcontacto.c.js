const { promiseImpl } = require('ejs');
const { reject } = require('underscore');

var formFuente = require('../fuente/sqlformcon.js')

class formController {
    crear(datos){
        return new Promise ((resolve, reject)=>{
            if (!datos.Nombre-Persona || !datos.Correo || !datos.Teléfono || !datos.Mensaje ) {
                console.log('Compruebe uno de los datos a Ingresar')
                return resolve("Compruebe uno de los datos a ingresar.");
            }
            console.log("Controlador pa enviar los datos al BD")
            formFuente.crear(datos)
            .then((resultado)=>{
                resolve (resultado)
            })
            .catch((err)=>{
              reject(err)
            });
        })
    }


}

const formC = new formController

module.exports = formC;