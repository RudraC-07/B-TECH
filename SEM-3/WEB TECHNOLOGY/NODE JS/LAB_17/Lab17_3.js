const fs = require("fs");

//fs.exists
let a =
  "C:\\Users\\Dell\\Desktop\\B.TECH\\SEM-3\\WEB TECHNOLOGY\\NODE JS\\LAB_17\\abc.txt";
fs.exists(
  "C:\\Users\\Dell\\Desktop\\B.TECH\\SEM-3\\WEB TECHNOLOGY\\NODE JS\\LAB_17\\abc.txt",
  (e) => {
    console.log(e ? "true" : "false");
  }
);

//fs.stat
const pathsToCheck = [
  "C:\\Users\\Dell\\Desktop\\B.TECH\\SEM-3\\WEB TECHNOLOGY\\NODE JS\\LAB_17\\abc.txt",
];

for (let i = 0; i < pathsToCheck.length; i++) {
  fs.stat(pathsToCheck[i], (err, stats) => {
    console.log(stats.isDirectory());
    console.log(stats);
  });
}

//fs.readFile
fs.readFile(
  "C:\\Users\\Dell\\Desktop\\B.TECH\\SEM-3\\WEB TECHNOLOGY\\NODE JS\\LAB_17\\abc.txt",
  (err, data) => {
    if (err) throw err;
    console.log(data.toString());
  }
);

//fs.writeFile
const data = new Uint8Array(Buffer.from("Hello Node.js"));
fs.writeFile(
  "C:\\Users\\Dell\\Desktop\\B.TECH\\SEM-3\\WEB TECHNOLOGY\\NODE JS\\LAB_17\\abc.txt",
  data,
  (err) => {
    if (err) throw err;
    console.log("The file has been saved!");
  }
);

//fs.appendFile
fs.appendFile(
  "C:\\Users\\Dell\\Desktop\\B.TECH\\SEM-3\\WEB TECHNOLOGY\\NODE JS\\LAB_17\\abc.txt",
  "data to append",
  (err) => {
    if (err) throw err;
    console.log('The " data to append" was appended to file!');
  }
);
