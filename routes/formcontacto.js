var express = require('express');
var router = express.Router();
const controller = require('../controllers/formcontacto.c.js')

/// RENDERIZAR LA PAGINA

router.get('/', function(req, res, next) {
    res.render('contacto', {Agregado: "Ingresar datos"})
});

//REGISTRAR DATOS DEL FORMULARIO

router.post('/', function(req, res){
    let datos = req.body
    console.log(datos)
    controller.registrar(datos)
    .then((resultado)=>{
        res.render('contacto',{Agregado: "Respuesta registrada en la pagina"})
    })
    .catch((err)=>{
        res.send(err)
    })
})


module.exports = router;
