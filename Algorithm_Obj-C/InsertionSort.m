//
//  InsertionSort.m
//  Algorithm_Obj-C
//
//  Created by YongJai on 24/10/2017.
//  Copyright © 2017 YongJai. All rights reserved.
//

#import "InsertionSort.h"

@implementation InsertionSort

+ (NSMutableArray *)InsertionSorts: (NSMutableArray*)array {
    for (int i = 1; i < array.count; i++) {
        for (int j = i; (j > 0) && ([array[j-1] intValue] > [array[j] intValue]); j--) {
            [array exchangeObjectAtIndex:j withObjectAtIndex:(j - 1)];
        }
    }
    NSLog(@"결과 : %@", array);
    return array;
}


@end
