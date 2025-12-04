let num = 10
let flag = 1
let sp = ""

for(i=1;i<=num;i++){
    for(k=0;k<=i-1;k++){
        sp = sp+" "
    }

    for(j=1;j<=num-i+1;j++){
        if(flag == 1){
            sp = sp+"* "
        }
        else{
            sp = sp+"@ "
        }
    }
    console.log(sp)
    flag = -flag
    sp = ""
}