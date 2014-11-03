//
//  AButtonCell.m
//  A1ObjC
//
//  Created by traintrackcn on 18/10/14.
//  Copyright (c) 2014 t. All rights reserved.
//

#import "AButtonCell.h"

@interface AButtonCell(){
    UIButton *btn;
}

@end

@implementation AButtonCell


- (void)layoutSubviews{
    [super layoutSubviews];
    
    [self.textLabel setText:@"This is a button"];
    
}



@end
