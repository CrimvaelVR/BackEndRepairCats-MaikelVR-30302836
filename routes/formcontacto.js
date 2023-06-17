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
        res.redirect(301, 'http://localhost:3000/api/inicio');
    })
    .catch((err)=>{
        res.send(err)
    })
})


module.exports = router;
