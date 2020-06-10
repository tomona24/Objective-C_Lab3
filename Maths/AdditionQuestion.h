//
//  AdditionQuestion.h
//  Maths
//
//  Created by Tomona Sako on 2020/06/09.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject

- (instancetype)init;
@property NSString *question;
@property NSInteger answer;
@property (readonly)NSInteger n1;
@property (readonly)NSInteger n2;


@end

NS_ASSUME_NONNULL_END
