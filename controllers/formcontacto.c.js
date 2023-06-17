const { promiseImpl } = require('ejs');
const { reject } = require('underscore');

var formFuente = require('../fuente/sqlformcon.js')

class formController {
    registrar(datos){
        console.log(datos)
        return new Promise ((resolve, reject)=>{
            if (!datos.Nombre_Persona || !datos.Correo || !datos.Telefono || !datos.Mensaje ) {
                console.log('Compruebe uno de los datos a Ingresar')
                return resolve("Compruebe uno de los datos a ingresar.");
            }
            console.log("Controlador pa enviar los datos al BD")
            formFuente.RegistrarForm(datos)
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