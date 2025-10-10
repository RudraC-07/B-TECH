#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#define N 100000

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

void insertionSort(int arr[], int n) {
    for (int i = 1; i < n; i++) {
        int key = arr[i];
        int j = i - 1;
        
        while (j >= 0 && arr[j] > key) {
            arr[j + 1] = arr[j];
            j--;
        }
        arr[j + 1] = key;
    }
}

void main(){
  int arr[N];
  clock_t start,end;
  double time;
  
  if(readFromFile("C:/Users/Dell/Desktop/SEM 5/DAA/ARRAY/best_case_100000.txt",arr,N)){
    start = clock();
    insertionSort(arr,N);
    end = clock();
    time = ((double)(end-start))/CLOCKS_PER_SEC * 1000;
    printf("Time taken: %f ms\n", time);
  }
}