//
//  ViewController.m
//  HHEXtension
//
//  Created by LXH on 16/9/14.
//  Copyright © 2016年 HHLM. All rights reserved.
//

#import "ViewController.h"
#import "HHAModel.h"
#import "HHItemView.h"
@interface ViewController ()
@property (nonatomic, copy) NSMutableArray *dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
    HHAModel *model1 = [[HHAModel alloc] init];
//    [model1 publicMethod]; //扩展方法
//    [model1 privateMethod];
    model1.hhh = @"sssss";

    
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"HH",@"NN",nil];
    self.dataArray = array;
    [self.dataArray removeObjectAtIndex:0];
    NSLog(@"%@",self.dataArray);
    HHItemView *item = [[HHItemView alloc] initWithFrame:CGRectMake(100, 100, 100, 40)];
    [self.view addSubview:item];
    item.itemName = @"上海";
    
    HHItemView *item1 = [[HHItemView alloc] initWithFrame:CGRectMake(100, 200, 100, 40)];
    [self.view addSubview:item1];
    item1.itemName = @"HHLM";
}
- (void)setDataArray:(NSMutableArray *)dataArray {
    [self.dataArray setArray: dataArray];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
