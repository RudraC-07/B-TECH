a = ["Vecna","Will","Dustin","Eleven","Max","Lucas"]

obj = {
  "Vecnaa":"Will",
  "Dustinn":"Eleven",
  "Max":"Lucas"
}

console.log(obj)

console.log("Array Destructuring")
const [Vecna,Will] = a
console.log(Vecna," ",Will)

console.log("Object Destructuring")
const {Vecnaa,Dustinn} = obj;
console.log(Vecnaa+" "+Dustinn)
