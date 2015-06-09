//
//  YBQViewController.m
//  test
//
//  Created by 严必庆 on 15-6-2.
//  Copyright (c) 2015年 ___FULLUSERNAME___. All rights reserved.
//

#import "YBQViewController.h"

@interface YBQViewController ()<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) NSArray *names;
@end

@implementation YBQViewController

- (void)viewDidLoad
{

    [super viewDidLoad];
    self.tableView.dataSource = self;
}
/**
 *  懒加载（用到时再加载）使用点语法时才调用
 *
 */
-(NSArray *)names{
    if (_names == nil) {
        _names = @[@"yan",@"lbj",@"jr",@"kobe"];
    }
    return _names;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSLog(@"number");
    return self.names.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"cell");
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    cell.textLabel.text = self.names[indexPath.row];
    return cell;
}
@end
