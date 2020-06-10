//
//  main.m
//  Maths
//
//  Created by Tomona Sako on 2020/06/09.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        ScoreKeeper *score = [[ScoreKeeper alloc]init];
        
        while(true) {
            AdditionQuestion *q = [[AdditionQuestion alloc]init];
            NSLog(@"%@", q.question);
            NSString *userAnswer = [InputHandler getUserInput: @"Enter your answer"];
            NSString *result;
            if([userAnswer  isEqual: @"quit"]){
                [score writeResult];
                break;
            }
            
            if (userAnswer == [NSString stringWithFormat:@"%d", q.answer]) {
                result = @"Right!";
                score.rightNum += 1;
            } else {
                result = @"Wrong!";
                score.wrongNum += 1;
            }
            NSLog(@"%@", result);
        }
    }
    return 0;
}
