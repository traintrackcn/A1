//
//  ViewController.m
//  A1ObjC
//
//  Created by traintrackcn on 18/10/14.
//  Copyright (c) 2014 t. All rights reserved.
//

#import "MainViewController.h"
#import "AQuestionsViewController.h"


@interface MainViewController ()

@end

@implementation MainViewController

- (instancetype)init{
    self = [super init];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"self.view -> %@",self.view);
    
    
    [self assembleQuestionsVC];
}

- (void)assembleQuestionsVC{
    AQuestionsViewController *vc = [[AQuestionsViewController alloc] init];
    NSArray *arr = [NSArray arrayWithObject:vc];
    [self setViewControllers:arr];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
