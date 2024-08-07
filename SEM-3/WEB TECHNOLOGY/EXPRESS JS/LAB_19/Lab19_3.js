const express = require("express");
const fs = require("fs");

const app = express();

app.get("/", (req, res) => {
  res.send("Hello World");
});

app.get("/home", (req, res) => {
  let data = fs.readFileSync("Home.txt")
  res.write(data)
  res.send();
});

app.get("/About", (req, res) => {
  let data = fs.readFileSync("about.txt")
  res.write(data)
  res.send();
});

app.get("/contact", (req, res) => {
  let data = fs.readFileSync("contact.txt")
  res.write(data)
  res.send();
});

app.listen(3000,() => {
  console.log("Port running at 3000")
});
