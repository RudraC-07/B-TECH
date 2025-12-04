let num = 5

let sp = ""

for(i=1;i<=5;i++){
    for(k=num-i;k>0;k--){
        sp = sp+" "
    }
    for(j=1;j<=i;j++){
        sp = sp+(num-j+1)+" "
    }
    console.log(sp)
    sp=""
}