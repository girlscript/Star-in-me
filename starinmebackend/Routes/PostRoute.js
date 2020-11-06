const { Router } = require('express');
const express = require('express');
const mongoose = require('mongoose');
const router = express.Router();
const PostData = require('../Models/PostModel');
router.get('/',function (req,res){
    PostData.find().exec().then((doc)=>{
        res.json(doc);
    }).catch((err)=>{
        res.send(err);
    });
});
router.post('/',function (req,res){
    var newitem = req.body;
    newitem.id = new mongoose.Types.ObjectId;
    newitem.date = Date.now();
    var data = PostData(newitem);
    data.save(function (err){
        if(err)
        {
            res.send(err);
        }
        else
        {
            res.send("User Added Successfully");
        }
    })
});
module.exports = router;