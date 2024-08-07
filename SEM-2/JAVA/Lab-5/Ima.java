public class Ima {
    public static void main(String[] args) {
        Student s1 = new Student();//default
        Student s2 = new Student(2,"rudra");//para
        Student s3 = new Student(2);//sem
        Student s4 = new Student("sgdu");//name
        
        System.out.println(s3.name);
    }
}
class Student{
    int sem;
    String name;

    //constructor overloading

    //default constructor
    public Student(){
        sem = 2;
        name = "abc";
    }
    //sem cons
    public Student(int sem){
        this.sem = sem;
    }

    //name 
    public Student(String name){
        this.name = name;
    }
    //parameter constructor
    public Student(int sem,String name){
        this.sem = sem;
        this.name = name;
    }
}