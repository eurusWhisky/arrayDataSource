//
//  ViewController.m
//  dataSourceTest
//
//  Created by 陈伟杰 on 2020/4/28.
//  Copyright © 2020 陈伟杰. All rights reserved.
//

#import "ViewController.h"
#import "ArrayDataSource.h"
#import "TestTableViewCell.h"
static NSString * const PhotoCellIdentifier = @"PhotoCell";
@interface ViewController ()<UITableViewDelegate>
@property (nonatomic,strong)UITableView *testTableView;
@property (nonatomic,strong)ArrayDataSource *arrayDataSource;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"1111");
    [self.view addSubview:self.testTableView];
}

-(UITableView *)testTableView{
    if (!_testTableView) {
        _testTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStylePlain];
        _testTableView.dataSource = self.arrayDataSource;
        _testTableView.delegate = self;
        [_testTableView registerClass:[TestTableViewCell class] forCellReuseIdentifier:PhotoCellIdentifier];
    }
    return _testTableView;
}

-(ArrayDataSource *)arrayDataSource{
    if (!_arrayDataSource) {
        TableViewCellConfigureBlock configureCell = ^(TestTableViewCell *cell, NSString *str) {
            cell.testStr = str;
        };
        NSArray *photos = @[@"第1行",@"第2行"];
        _arrayDataSource = [[ArrayDataSource alloc] initWithItems:photos
                                                             cellIdentifier:PhotoCellIdentifier
                                                         configureCellBlock:configureCell];
    }
    return _arrayDataSource;
}


@end
