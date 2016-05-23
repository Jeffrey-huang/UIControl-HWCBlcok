//
//  ViewController.m
//  UIControl+HWCBlcok
//
//  Created by 黄文昌 on 16/5/23.
//  Copyright © 2016年 黄文昌. All rights reserved.
//

#import "ViewController.h"
#import "UIControl+HWCBlcok.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *MyBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.MyBtn.hwcTouchUpBlcok = ^(id sender){
        NSLog(@"%@",[sender class]);
    };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
