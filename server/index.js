require('dotenv').config()
const express = require('express');
const mongooseConnect = require('./databases/mongoConnect');
const PORT = process.env.PORT || 3000;

// IMPORTS FROM PACKAGES
const adminRouter = require("./routes/admin");
// IMPORTS FROM OTHER FILES
const authRouter = require("./routes/auth");
const productRouter = require("./routes/product");
const userRouter = require("./routes/user");


const app = express()


// middleware
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);
app.use(userRouter);

app.get('/',(req,res)=>{
    res.send('Hello')
})




app.listen(PORT,'0.0.0.0',()=>{
    console.log(`Server is listening on port ${PORT}`);
    mongooseConnect()
})
