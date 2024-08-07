const express = require("express");
const app = express();
app.use(express.json());

var list = [];

app.get("/list", (req, res) => {
  res.send(list);
});

app.post("/list", (req, res) => {
  // console.log("hello");
  const { name } = req.body;
  list.push(name);
  res.send(list);
});

app.put("/list/:index", (req, res) => {
  const id = req.params.index;
  const { name } = req.body;
  list[id] = name;
  res.send(list);
});

app.delete("/list/:index", (req, res) => {
  const id = req.params.index;
  list.splice(id, 1);
  res.send(list);
});

const port = 3000;
app.listen(3000, () => {
  console.log("Port running at 3000");
});
