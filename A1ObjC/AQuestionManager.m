//
//  AQuestionManager.m
//  A1ObjC
//
//  Created by traintrackcn on 18/10/14.
//  Copyright (c) 2014 t. All rights reserved.
//

#import "AQuestionManager.h"

@interface AQuestionManager(){
    NSMutableDictionary *dic;
}

@end

@implementation AQuestionManager

- (instancetype)init{
    self = [super init];
    if (self) {
        dic = [NSMutableDictionary dictionary];
        [dic setObject:@"题1" forKey:@"题1"];
        [dic setObject:@"题2" forKey:@"题2"];
        [dic setObject:@"题3" forKey:@"题3"];
        [dic setObject:@"题4" forKey:@"题4"];
        [dic setObject:@"题5" forKey:@"题5"];
        [dic setObject:@"题6" forKey:@"题6"];
    }
    return self;
}

- (NSInteger)questionCount{
    return dic.allValues.count;
}

- (id)questionForKey:(NSString *)key{
    return  [dic objectForKey:key];
}

- (id)questionAtIndex:(NSInteger)index{
    return [dic.allValues objectAtIndex:index];
}

@end
