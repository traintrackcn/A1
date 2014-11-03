//
//  AQuestionManager.h
//  A1ObjC
//
//  Created by traintrackcn on 18/10/14.
//  Copyright (c) 2014 t. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AQuestionManager : NSObject


- (NSInteger)questionCount;
- (id)questionForKey:(NSString *)key;
- (id)questionAtIndex:(NSInteger)index;

@end
