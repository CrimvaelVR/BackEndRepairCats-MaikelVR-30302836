const { Router } = require('express');
var express = require('express');
var router = express.Router();
const controller = require('../controllers/galeria.c.js')

router.get('/', function(req, res, next) { 
  controller.listar()
  .then((resultado)=>{
    console.log(JSON.stringify(resultado))
    // Si la solicitud incluye el parámetro "json", devuelve solo los datos como JSON
    if (req.query.json) {
      res.json(resultado);
    } else {
      // De lo contrario, renderiza la plantilla y pasa los datos como una variable local
      res.render('galeriaproductos', {"JSON": JSON.stringify(resultado)});
    }
  })
  .catch((err)=>{
    res.send(err)
  })
});

module.exports = router