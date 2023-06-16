const express = require ('express')
const app = express();


/// MIDDLEWARE

app.use(morgan('dev'))

//INICIO DEL SERVER
app.listen(3000, () => {
    console.log(`Server en el puerto ${3000}`)
})