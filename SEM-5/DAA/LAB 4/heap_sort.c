#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#define N 100000

int heapify(int arr[], int n, int i){
  int largest = i;
  int left = 2*i+1;
  int right = 2*i+2;

  if(left<n && arr[left]>arr[largest]){
    largest = left;
  }

  if(right<n && arr[right]>arr[largest]){
    largest = right;
  }

  if(largest != i){
    int temp = arr[i];
    arr[i] = arr[largest];
    arr[largest] = arr[temp];
    heapify(arr,n,largest);
  }
}

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

void heapSort(int arr[], int n) {
    for (int i = n / 2 - 1; i >= 0; i--)
        heapify(arr, n, i);

    for (int i = n - 1; i > 0; i--) {
        int temp = arr[0];
        arr[0] = arr[i];
        arr[i] = temp;

        heapify(arr, i, 0);
    }
}

void main(){
  int arr[N];
  clock_t start,end;
  double time;
  
  if(readFromFile("E:/SEM 5/DAA/ARRAY/worst_case_100000.txt",arr,N)){
    start = clock();
    heapSort(arr,N);
    end = clock();
    time = ((double)(end-start))/CLOCKS_PER_SEC * 1000;
    printf("Time taken: %f ms\n", time);
  }
}