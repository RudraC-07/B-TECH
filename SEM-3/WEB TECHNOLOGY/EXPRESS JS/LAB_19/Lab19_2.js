const express = require("express");

const app = express();

app.get("/", (req, res) => {
  res.send("Hello World");
});

app.get("/home", (req, res) => {
  res.send("Welcome Home");
});

app.get("/About", (req, res) => {
  res.send("About us");
});

app.get("/thor", (req, res) => {
  res.send("I am thor");
});

app.get("/ironman", (req, res) => {
  res.send("I am ironman");
});

app.listen(3000,() => {
  console.log("Port running at 3000")
});
