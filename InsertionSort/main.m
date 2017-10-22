//
//  main.m
//  InsertionSort
//
//  Created by YongJai on 22/10/2017.
//  Copyright © 2017 YongJai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InsertionSort.h"

//@interface InsertionSort:NSObject
//
//- (NSMutableArray *)InsertionSorts: (NSMutableArray*)array;
//
//@end
//
//@implementation InsertionSort
//- (NSMutableArray *)InsertionSorts: (NSMutableArray*)array {
//    NSUInteger size = array.count;
//    for (int i = 1; i < size; i++) {
//        NSNumber* key = array[i];
//        int k = i - 1;
//        while ( (k >= 0) && (array[k]>key) ) {
//            array[k+1] = array[k];
//            k--;
//        }
//        array[k+1] = key;
//    }
//    return array;
//}
//
//@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSLog(@"Hello, World!");

    NSMutableArray *array1 = [NSMutableArray arrayWithObjects:@"1", nil];
    NSMutableArray *array2 = [NSMutableArray arrayWithObjects:@"3", @"1", @"2", nil];
    NSMutableArray *array3 = [NSMutableArray arrayWithObjects:@"8", @"3", @"6", @"7", @"1", nil];
    
    [InsertionSort InsertionSorts:array1];
    [InsertionSort InsertionSorts:array2];
    [InsertionSort InsertionSorts:array3];
        NSLog(@"waeda");
    }
    return 0;
}
