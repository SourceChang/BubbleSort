//
//  BubbleSorter.cpp
//  BubbleSort
//
//  Created by Source on 2020/10/2.
//  Copyright © 2020 Source. All rights reserved.
//

#include "BubbleSorter.hpp"


void BubbleSort::sort(std::vector<int>& arrNumbers) {
    
    for ( int i = arrNumbers.size() - 1; i >= 0; --i ) {
        
        for ( int j = 0; j < i; ++j ) {
            
            if ( arrNumbers[j] > arrNumbers[j + 1] ) {
                
                std::swap(arrNumbers[j], arrNumbers[j + 1] );
            }
        }
    }
}

