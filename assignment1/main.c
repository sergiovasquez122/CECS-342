#include <stdio.h>
#include <stdlib.h>

void swap(int* x, int* y){
    int temp = *x; // get the value of the element pointed to by x
    *x =  *y; // get the value of the element pointed to by y and overwrite the value of the element pointed by x with it
    *y = temp; // overwrite the value of the element pointed by y with the original value of *x
}

// [5, 3, 2, 1, 5, 3, 2, 3, 5]
int partition(int* a, int left, int right, int pivot_idx){
    int lo = left - 1; // start lo one less since we do prefix increment it will start at the correct position
    int hi = right; // start right one more since we do prefix decrement it will start at the correct position
    int pivot_value = a[pivot_idx]; // get the pivot value from the pivot position
    swap(&a[left], &a[right]); // move the pivot to a position where it will not be used in partition
    while(lo <= hi){ // continously partition until the left and right pointers have corssed
        while(lo < hi && a[++lo] < pivot_value) if(hi <= lo) break; // keep on incrementing while valid and left pointer smaller than pivot
        while(lo < hi && a[--hi] > pivot_value) if(hi <= lo) break; // keep on incrementing while valid and right pointer larger than pivot
        if(hi <= lo) break; // if we have crossed no more work to be done
        swap(&a[lo++], &a[hi--]); // swap the values of left and right pointer to maintain partition invariant then increment since both values are now in correct position
    }
    swap(&a[right], &a[lo]); // move the pivot to the correct position
    return lo; // return the new pivot index
}

void qsort_helper(int* a, int left, int right){
    if(right <= left) return; // once the right and left have been crossed no more work needs to be done
    int new_pivot_idx = partition(a, left, right, left); // do partitioning to get the new pivot index where we always choose the leftmost element as the pivot
    qsort_helper(a, left, new_pivot_idx - 1); // sort the [left, ... ,pivot_idx - 1]
    qsort_helper(a, new_pivot_idx + 1, right); // sort the [pivot_idx + 1, ... ,right]
}

void qsort2(int* a, int n){
    qsort_helper(a, 0, n - 1); // do quicksort using helper
}


int main() {
    int a[] = {4, 65, 2, -31, 0, 99, 2, 83, 287, 1};
    int length = sizeof(a) / sizeof(a[0]);
    qsort2(a, length);
    for(int i = 0;i < length;i++){
        printf("%i ", a[i]);
    }
}