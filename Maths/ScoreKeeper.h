//
//  ScoreKeeper.h
//  Maths
//
//  Created by Tomona Sako on 2020/06/09.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ScoreKeeper : NSObject

- (instancetype)init;
@property int rightNum;
@property int wrongNum;
- (void) writeResult;

@end

