//
//  AQuestionsViewController.m
//  A1ObjC
//
//  Created by traintrackcn on 18/10/14.
//  Copyright (c) 2014 t. All rights reserved.
//

#import "AQuestionsViewController.h"
#import "AQuestionCell.h"
#import "AButtonCell.h"
#import "AQuestionManager.h"

typedef NS_ENUM(NSInteger, Section) {
    SectionItem,
    SectionButton,
    SectionCount
};

@interface AQuestionsViewController(){
    AQuestionManager *qm;
}

@end

@implementation AQuestionsViewController

- (instancetype)init{
    self = [super init];
    if (self) {
        qm = [[AQuestionManager alloc] init];
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor greenColor]];
    
}

#pragma mark - 

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return SectionCount;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == SectionItem) return qm.questionCount;
    if (section == SectionButton) return 1;
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSInteger section = indexPath.section;
    NSInteger row = indexPath.row;
    
    if (section == SectionItem) {
        return [self assembleItemCellForRow:row tableView:tableView];
    }else if(section == SectionButton){
        return [self assembleButtonCellForRow:row tableView:tableView];
    }
    
    return nil;
    
    
    
    
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger section = indexPath.section;
    NSInteger row = indexPath.row;
    if (section == SectionItem) {
        AQuestionsViewController *vc = [[AQuestionsViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }
    
    if(section == SectionButton){
        UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"hello" message:@"gggg" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [av show];
    }
    
}


#pragma mark - assebmers

- (AQuestionCell *)assembleItemCellForRow:(NSInteger)row tableView:(UITableView *)tableView{
    AQuestionCell *cell = [tableView dequeueReusableCellWithIdentifier:@"QuestionCell"];
    
    if (cell == nil) {
        cell = [[AQuestionCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"QuestionCell"];
    }
    
    id item = [qm questionAtIndex:row];
    
    [cell.textLabel setText:(NSString *)item];
    return cell;
}

- (AButtonCell *)assembleButtonCellForRow:(NSInteger)row tableView:(UITableView *)tableView{
    AButtonCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ButtonCell"];
    if (cell == nil) {
        cell = [[AButtonCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ButtonCell"];
    }
    return cell;
}

@end
