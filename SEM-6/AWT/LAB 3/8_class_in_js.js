class Student{
  sem = 6

  constructor(name,age){
    this.name = name
    this.age = age
  }

  displayInfo(){
    console.log("name : "+this.name)
    console.log("age : "+this.age)
  }
}

const s1 = new Student("Vecna",25)
s1.displayInfo()

const s2 = new Student("Will",18)
s2.displayInfo()