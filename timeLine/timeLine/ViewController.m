//
//  ViewController.m
//  timeLine
//
//  Created by tirostiros on 15/7/7.
//  Copyright (c) 2015年 cn.com.buslink. All rights reserved.
//

#import "ViewController.h"
#import "TimeLineCell.h"

static NSString *cellidentifier = @"kcellidentifier";
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    [self.view addSubview:_tableView];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    UINib *nib = [UINib nibWithNibName:@"TimeLineCell" bundle:nil];
    [_tableView registerNib:nib forCellReuseIdentifier:cellidentifier];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TimeLineCell *cell = [tableView dequeueReusableCellWithIdentifier:cellidentifier];
    cell.isLast = NO;
    cell.isFirst = NO;
    if ([indexPath row] == 0) {
        cell.isFirst = YES;
    }else if([indexPath row] == 9){
        cell.isLast = YES;
    }
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 89;
}

- (BOOL)tableView:(UITableView *)tableView shouldHighlightRowAtIndexPath:(NSIndexPath *)indexPath{
    return NO;
}




@end
