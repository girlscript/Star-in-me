const express = require('express');
const bodyParser = require('body-parser');
const mongoose = require('mongoose');
mongoose.Promise = global.Promise;
mongoose.connect('mongodb://127.0.0.1/ggsoc_database');
mongoose.connection.on('error', (error) => {
    console.log(error);
});
const PostRoute = require('./Routes/PostRoute');
mongoose.connection.on("connected", () => {
    console.log("Database connected!");
});
var app = express();
app.use(bodyParser());
app.use(express.json());
app.get('/',(req,res)=>{
    res.send("Welcome to star in me project backend routes");
})
app.use('/post',PostRoute);
app.listen('8000', function () {
    console.log('Started');
});