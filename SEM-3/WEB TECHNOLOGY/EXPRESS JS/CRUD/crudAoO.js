const express = require('express');
const app = express();
app.use(express.json());


var list = [
  {
    id:1,
    name:"renish",
    age:"50",
    email:"renish@darshan.ac.in",
    college:"darshan"
  },
  {
    id:2,
    name:"nikunj",
    age:"20",
    email:"nikunj@darshan.ac.in",
    college:"darshan"
  }
]

//getAll
app.get('/students',(req,res)=>{
  res.send(list);
})

//getById
app.get("/students/:id",(req,res)=>{
  const ans = list.find((stu)=>{
    if(stu.id == req.params.id){
      return true;
    }
  })
  res.send(ans);
})

//create
app.post("/students",(req,res)=>{
  list.push(req.body);
  res.send("Student added")
})

//update
app.patch("/students/:id",(req,res)=>{
  const idToUpdate = list.findIndex((stu)=>{
    if(stu.id == req.params.id){
      return true;
    }
  })
  list[idToUpdate] = req.body;
  res.send("Student Updated")
})

//delete
app.delete("/students/:id",(req,res)=>{
  const stuDelete = list.findIndex((stu)=>{
    if(stu.id == req.params.id){
      return true;
    }
  })
  list.splice(stuDelete,1);
  res.send("Student Deleted");
})

const port = 3000;
app.listen(3000,(req,res)=>{
  console.log(`Port started at ${port}!`)
})