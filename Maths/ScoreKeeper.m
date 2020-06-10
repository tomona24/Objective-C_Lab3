//
//  ScoreKeeper.m
//  Maths
//
//  Created by Tomona Sako on 2020/06/09.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init
{
    self = [super init];
    if (self) {
        _rightNum = 0;
        _wrongNum = 0;
    }
    return self;
}

- (void) writeResult {
    int ratio = (self.rightNum / (self.rightNum + self.wrongNum)) * 100;
    NSLog(@"score: %d right, %d wrong ---- %d%%", self.rightNum, self.wrongNum, ratio);
}

@end
