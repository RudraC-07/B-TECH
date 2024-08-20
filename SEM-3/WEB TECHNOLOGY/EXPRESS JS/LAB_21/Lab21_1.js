const express = require('express');
const app = express();
const mongoose = require('mongoose');  
const Students = require("./Students");

const connectionString = "mongodb+srv://Rudra:rudrax_05@cluster0.wksjtlv.mongodb.net/Lab_Work";

mongoose.connect(connectionString).then(()=>{
  console.log("MongoDB connected Successfully")

  app.get('/students',async(req,res)=>{
    const data = await Students.find();
    res.send(data);
  })

  app.listen(3000,()=>{
    console.log("Server Started at 3000");
  }) 
})