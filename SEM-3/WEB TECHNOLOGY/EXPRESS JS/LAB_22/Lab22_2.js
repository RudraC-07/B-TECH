const express = require('express');
const mongoose = require('mongoose');  
const Student = require("./Student");
const bodyParser = require('body-parser');

const connectionString = "mongodb+srv://Rudra:rudrax_05@cluster0.wksjtlv.mongodb.net/Lab_Work";

mongoose.connect(connectionString).then(()=>{
  console.log("MongoDB connected Successfully")

  const app = express();
  app.use(bodyParser.urlencoded());

  //GetAll
  app.get('/students',async(req,res)=>{
    const data = await Student.find();
    res.send(data);
  })

  //GetById
  app.get('/students/:rollNo',async(req,res)=>{
    const data = await Student.find({rollNo:req.params.rollNo});
    res.send(data);
  })
  
  //Create
  app.post('/students',async(req,res)=>{
    stu = new Student({...req.body});
    const data = await stu.save();
    res.send("Student added to DB");
  })

  //Update
  app.patch('/students/:rollNo',async(req,res)=>{
    const stu = await Student.findOneAndUpdate({rollNo:req.params.rollNo},req.body);
    res.send("Student updated successfully");
  })

  //Delete
  app.delete('/students/:rollNo',async(req,res)=>{
    const data = await Student.deleteOne({rollNo:req.params.rollNo});
    res.send("Student removed from DB")
  })

  app.listen(3000,()=>{
    console.log("Server Started at 3000");
  }) 
})