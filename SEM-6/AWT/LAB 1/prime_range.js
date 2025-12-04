let num1 = 1
let num2 = 20

let flag = true

for(i=num1;i<=num2;i++){
    for(j=2;j<i;j++){
        if(i%j == 0){
            flag = false
            break
        }
    }

    if(flag == true){
        console.log(i+",")
    }

    flag = true
}