//
//  InsertionSort.m
//  InsertionSort
//
//  Created by YongJai on 22/10/2017.
//  Copyright © 2017 YongJai. All rights reserved.
//

#import "InsertionSort.h"

@implementation InsertionSort


/* Insertion Sort
 for example, there is a array like {4, 3, 1, 2}.
 Convert steps like {3, 4, 1, 2} -> {3, 1, 4, 2} => {1, 3, 4, 2} -> {1, 3, 2, 4} -> {1, 2, 3, 4}
 So, Result is {1, 2, 3, 4}
 */
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
