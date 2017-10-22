//
//  InsertionSort.m
//  InsertionSort
//
//  Created by YongJai on 22/10/2017.
//  Copyright © 2017 YongJai. All rights reserved.
//

#import "InsertionSort.h"

@implementation InsertionSort

+ (NSMutableArray *)InsertionSorts: (NSMutableArray*)array {
    NSUInteger size = array.count;
    NSLog(@"size = %lu", (unsigned long)size);
    for (int i = 1; i < size; i++) {
        NSNumber* key = array[i];
        int k = i - 1;
        while ( (k >= 0) && (array[k]>key) ) {
            NSLog(@"key = %@", key);
            NSLog(@"array[k] = %@", array[k]);
            array[k+1] = array[k];
            k--;
        }
        array[k+1] = key;
    }
    NSLog(@"%@", array);
    return array;
}

@end
