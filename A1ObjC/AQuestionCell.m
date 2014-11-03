//
//  AQuestionCell.m
//  A1ObjC
//
//  Created by traintrackcn on 18/10/14.
//  Copyright (c) 2014 t. All rights reserved.
//

#import "AQuestionCell.h"

@implementation AQuestionCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    [self.textLabel setTextColor:[UIColor grayColor]];
}

@end
