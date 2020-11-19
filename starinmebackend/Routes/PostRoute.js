const { Router } = require('express');
const express = require('express');
const mongoose = require('mongoose');
const router = express.Router();
const PostData = require('../Models/PostModel');
router.get('/',function (req,res){
    PostData.find().exec().then((doc)=>{
        res.json(doc);
    }).catch((err)=>{
        res.status(404).send(err);
    });
});
router.post('/',function (req,res){
    var newitem = req.body;
    newitem.id = new mongoose.Types.ObjectId;
    newitem.date = Date.now();
    var data = PostData(newitem);
    data._id = data.id;
    data.save(function (err){
        if(err)
        {
            res.status(404).send(err);
        }
        else
        {
            console.log(data);
            res.send(data.id);
        }
    })
});
router.post('/incrementlikes/:id',function (req,res){
    PostData.findByIdAndUpdate({_id: mongoose.Types.ObjectId(req.params.id)},{$inc : {likes : 1}},(err,result)=>{
        if(err)
            res.status(404).send(err);
        else
            res.send(result);
    });
});
router.post('/incrementvote/:id',function (req,res){
    var tovote;
    tovote = "votes."+String(req.body.option);
    console.log(tovote);
    PostData.findByIdAndUpdate({_id: mongoose.Types.ObjectId(req.params.id)},{$inc : {[tovote] : Number.parseInt(1)}},(err,result)=>{
        if(err)
            res.status(404).send(err);
        else
            res.send(result);
    });
});
router.post('/decrementlikes/:id',function (req,res){
    PostData.findByIdAndUpdate({_id: mongoose.Types.ObjectId(req.params.id)},{$inc : {likes : -1}},(err,result)=>{
        if(err)
        res.status(404).send(err);
        else
            res.send(result);
    });
});
router.post('/comments/:id',function (req,res){
    PostData.findByIdAndUpdate({_id: mongoose.Types.ObjectId(req.params.id)},{$push : {comments : req.body.comments}},(err,result)=>{
        if(err)
        res.status(404).send(err);
        else
            res.send(result);
    });
});
router.post('/shares/:id',function (req,res){
    PostData.findByIdAndUpdate({_id: mongoose.Types.ObjectId(req.params.id)},{$inc : {shares : 1}},(err,result)=>{
        if(err)
        res.status(404).send(err);
        else
            res.send(result);
    });
});
module.exports = router;