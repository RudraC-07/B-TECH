const http = require("http");

const server = http.createServer((req,res)=>{
  console.log(req.url);

  if(req.url==="/abc"){
    res.end("hello abc");
  }
  else if(req.url==="/thor"){
      res.end("thor");
  }
  else if(req.url==="/ironman"){
      res.end("ironman");
  }
  else if(req.url==="/captain"){
      res.end("captain");
  }
  else if(req.url==="/satrk"){
      res.end("stark");
  }
});

const port = 3000;

server.listen(port,
    () => {
        console.log(
            `Server running at http://localhost:${port}/`
        );
    });