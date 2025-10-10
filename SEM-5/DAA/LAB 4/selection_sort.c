#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#define N 100

int readFromFile(const char *f, int arr[], int n){
  FILE *ptr = fopen(f,"r");
  if(!ptr){
    printf("File not found");
    return 0;
  }
  for(int i=0;i<n;i++){
    fscanf(ptr,"%d",&arr[i]);
  }
  fclose(ptr);
  return 1;
}

void selectionSort(int arr[], int n) {
    int i, j, minIndex, temp;

    for (i = 0; i < n - 1; i++) {
        minIndex = i;

        for (j = i + 1; j < n; j++) {
            if (arr[j] < arr[minIndex]) {
                minIndex = j;
            }
        }

        if (minIndex != i) {
            temp = arr[i];
            arr[i] = arr[minIndex];
            arr[minIndex] = temp;
        }
    }
}

void main(){
  int arr[N];
  clock_t start,end;
  double time;
  
  if(readFromFile("E:/SEM 5/DAA/ARRAY/worst_case_100.txt",arr,N)){
    start = clock();
    selectionSort(arr,N);
    end = clock();
    time = ((double)(end-start))/CLOCKS_PER_SEC * 1000;
    printf("Time taken: %f ms\n", time);
  }
}