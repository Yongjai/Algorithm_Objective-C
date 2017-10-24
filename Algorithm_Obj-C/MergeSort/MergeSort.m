//
//  MergeSort.m
//  Algorithm_Obj-C
//
//  Created by YongJai on 24/10/2017.
//  Copyright © 2017 YongJai. All rights reserved.
//

#import "MergeSort.h"

@implementation MergeSort

+ (NSArray *)MergeSort:(NSArray *)array {
    if (array.count == 1) {
        return array;
    }
    NSInteger firstArrMid = array.count/2;
    NSInteger secondArrMid = array.count - firstArrMid;
    
    NSArray *leftArr = [array subarrayWithRange:NSMakeRange(0, firstArrMid)];
    NSArray *rightArr = [array subarrayWithRange:NSMakeRange(firstArrMid, secondArrMid)];
    
    NSArray *sortedFirst = [self MergeSort:leftArr];
    NSArray *sortedSecond = [self MergeSort:rightArr];
    
    NSArray *mergedArr = [self Merge:sortedFirst WithSecondArray:sortedSecond];
    NSLog(@"%@", mergedArr);
    return mergedArr;
}

+ (NSArray *)Merge:(NSArray *)firstArray WithSecondArray:(NSArray *)secondArray{
    NSMutableArray *mergedArr = [NSMutableArray array];
    
    NSInteger firstBegin = 0;
    NSInteger secondBegin = 0;
    
    while (firstBegin < firstArray.count && secondBegin < secondArray.count) {
        NSNumber *firstItem = firstArray[firstBegin];
        NSNumber *secondItem = secondArray[secondBegin];
        if (firstItem.integerValue < secondItem.integerValue) {
            [mergedArr addObject:firstItem];
            firstBegin++;
        } else {
            [mergedArr addObject:secondItem];
            secondBegin++;
        }
        
        while (firstBegin < firstArray.count) {
            [mergedArr addObject:firstArray[firstBegin]];
            firstBegin++;
        }
        
        while (secondBegin < secondArray.count) {
            [mergedArr addObject:secondArray[secondBegin]];
            secondBegin++;
        }
        
    }
    return mergedArr;
}

@end
