const mongoose = require('mongoose');

const Stu = new mongoose.Schema({
  name : String,
  dept : String,
  age : Number
})

const Student = mongoose.model("students",Stu)
module.exports = Student