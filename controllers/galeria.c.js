const { promiseImpl } = require('ejs');
const { reject } = require('underscore');

const galeriaFuente = require('../fuente/sqlgaleria.js');

class galeriaController {
    //CONSULTAR EQUIPOS
  listar(){
      return new Promise ((resolve, reject)=>{
          console.log("Funciona Controlador 1")
          galeriaFuente.listarP()
          .then((resultado)=>{
            if(resultado == ""){
                resultado = "No hay productos en la base de datos"
                resolve(resultado)
            }
              resolve (resultado)
          })
          .catch((err)=>{
            reject(err)
          });
      })
  }
}

const galeriaC = new galeriaController

module.exports = galeriaC;