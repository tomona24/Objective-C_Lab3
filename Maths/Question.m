//
//  AdditionQuestion.m
//  Maths
//
//  Created by Tomona Sako on 2020/06/09.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import "Question.h"

@implementation Question
- (instancetype)init
{
    self = [super init];
    if (self) {
         _n1 = (NSInteger)arc4random_uniform(90) + 10;
         _n2 = (NSInteger)arc4random_uniform(90) + 10;
         _question = [NSString stringWithFormat:@"%ld + %ld ?", (long)_n1, (long)_n2];
         _answer = _n1 + _n2;
        _startTime = [NSDate date];
    }
    return self;
}

// overriding getter
- (NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval) answerTime
{
    NSTimeInterval dif = [self.endTime timeIntervalSinceDate: self.startTime];
    return dif;
}

@end
