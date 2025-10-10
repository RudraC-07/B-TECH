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

void bubbleSort(int arr[], int n) {
    for (int i = 0; i < n - 1; i++) {
        int swapped = 0;
        for (int j = 0; j < n - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
                swapped = 1;
            }
        }
        if (!swapped) break;
    }
}

void main(){
  int arr[N];
  clock_t start,end;
  double time;
  
  if(readFromFile("C:/Users/Dell/Desktop/SEM 5/DAA/ARRAY/worst_case_100.txt",arr,N)){
    start = clock();
    bubbleSort(arr,N);
    end = clock();
    time = ((double)(end-start))/CLOCKS_PER_SEC * 1000;
    printf("Time taken: %f ms\n", time);
  }
}