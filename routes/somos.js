var express = require('express');
var router = express.Router();
const controller = require('../controllers/index.c.js')

router.get('/', function(req, res, next) {
    res.render('somos', {title: "Historia de la Pagina"} )

});


 
module.exports = router;
