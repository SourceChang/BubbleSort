//
//  ViewController.m
//  BubbleSort
//
//  Created by Source on 2020/10/2.
//  Copyright © 2020 Source. All rights reserved.
//

#import "ViewController.h"
#include "Sorter.h"


#include <iostream>


#include "BubbleSorter.hpp"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    std::vector<int> array1 = { 1, 3, 2 };
    BubbleSort::sort(array1);
    for ( auto value : array1 ) {
        
        std::cout << value << " ";
    }
    std::cout << std::endl;
    
    std::vector<int> array2 = { 4, 2, 3, 8, 7, 6, 1, 2, 3, 9, 8, 7 };
    BubbleSort::sort(array2);
    for ( auto value : array2 ) {
        
        std::cout << value << " ";
    }
    std::cout << std::endl;
    
    std::vector<int> array3 = { 9, 8, 7, 6, 5, 4, 3, 2, 1 };
    BubbleSort::sort(array3);
    for ( auto value : array3 ) {
        
        std::cout << value << " ";
    }
    std::cout << std::endl;
    
    NSLog(@"%@", [[Sorter bubbleSort:@[ @1, @3, @2 ]] componentsJoinedByString:@", "]);
    NSLog(@"%@", [[Sorter bubbleSort:@[ @4, @2, @3, @8, @7, @6, @1, @2, @3, @9, @8, @7 ]] componentsJoinedByString:@", "]);
    NSLog(@"%@", [[Sorter bubbleSort:@[ @9, @8, @7, @6, @5, @4, @3, @2, @1 ]] componentsJoinedByString:@", "]);
}


@end
