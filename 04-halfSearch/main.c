//
//  main.c
//  04-halfSearch
//
//  Created by JING ZHANG on 9/7/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#include <stdio.h>

int searchItem(int arr[], int len, int key) {
    
    //定义变量
    int low = 0, high = len - 1, mid;
    
    //循环
    while (low <= high) {
    
    //计算mid的位置
        mid = (low + high)/2;
        
    //判断key a[mid], 右半区查找
        if (key > arr[mid]) {
            low = mid + 1;
        } else if (key < arr[mid]) {
            high = mid - 1;
        } else {
            return mid;
        }
    }
    
    return -1;
}


int main(int argc, const char * argv[]) {
    
    int a[] = {3, 4, 12, 20, 21, 23, 28, 45, 67, 100};
    
    int loc = searchItem(a, 10, 20);
    
    printf("loc = %d\n", loc);
    
    return 0;
}
