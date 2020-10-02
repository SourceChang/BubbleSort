//
//  Sorter.m
//  BubbleSort
//
//  Created by Source on 2020/10/2.
//  Copyright © 2020 Source. All rights reserved.
//

#import "Sorter.h"

@implementation Sorter


+ (nonnull NSArray<NSNumber *> *)bubbleSort:(nonnull NSArray<NSNumber *> *)arrNumbers {
    
    NSMutableArray<NSNumber *> *arrMNumbers = [arrNumbers mutableCopy];
    for ( NSInteger endIndex = arrNumbers.count - 1; endIndex >= 0; --endIndex ) {
        
        for ( NSInteger startIndex = 0; startIndex < endIndex; ++startIndex ) {
            
            if ( arrMNumbers[startIndex].integerValue > arrMNumbers[startIndex + 1].integerValue ) {
                
                // swap
                NSNumber *temp = arrMNumbers[startIndex];
                arrMNumbers[startIndex] = arrMNumbers[startIndex + 1];
                arrMNumbers[startIndex + 1] = temp;
            }
        }
    }
    
    return [arrMNumbers copy];
}


@end
