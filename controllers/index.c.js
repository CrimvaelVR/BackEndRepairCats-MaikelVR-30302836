const { promiseImpl } = require('ejs');
const connection = require('express-myconnection');
const { reject } = require('underscore');

var indexFuente = require('../fuente/sqlindex.js')

class indexController {
    //CONSULTAR EQUIPOS
  listar(){
      return new Promise ((resolve, reject)=>{
          console.log("Funciona Controlador 1")
          indexFuente.listarP()
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


const indexC = new indexController

module.exports = indexC;