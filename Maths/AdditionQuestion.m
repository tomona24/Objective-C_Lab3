//
//  AdditionQuestion.m
//  Maths
//
//  Created by Tomona Sako on 2020/06/09.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
         _n1 = (NSInteger)arc4random_uniform(90) + 10;
         _n2 = (NSInteger)arc4random_uniform(90) + 10;
         _question = [NSString stringWithFormat:@"%ld + %ld ?", (long)_n1, (long)_n2];
         _answer = _n1 + _n2;
        
    }
    return self;
}

//- (void) addition {
//    NSLog(@"%d + %d ?", self.n1, self.n2);
//}

@end
