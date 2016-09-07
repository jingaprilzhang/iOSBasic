//
//  main.c
//  02-selectionSort
//
//  Created by JING ZHANG on 9/7/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#include <stdio.h>

//选择排序

void selectSort(int arr[], int len) {
    
    //双重循环
    
    int temp;
    for (int i = 0; i < len - 1; i++) {
        for (int j = i + 1; j < len; j++) {
            //交换的依据
            if (arr[i] > arr[j]) {
                //交换
                temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }
}

int main(int argc, const char * argv[]) {
    
    // 定义一个数组
    int a[10] = {23, 12, 4, 67, 20, 45, 3, 28, 90, 20};
    
    //目的排序
    selectSort(a, 10);
    
    //遍历输出数组
    for (int i = 0; i < 10; i++) {
        printf("%d\t", a[i]);
    }
 
    return 0;
}
