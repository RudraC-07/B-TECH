function greet(name,callback){
  console.log("Hello "+name)

  callback()
}

function sayBye(){
  console.log("Good bye")
}

  greet("John",sayBye)