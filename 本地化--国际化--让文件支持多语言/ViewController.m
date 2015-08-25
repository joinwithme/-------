//
//  ViewController.m
//  本地化--国际化--让文件支持多语言
//
//  Created by qianfeng on 15/7/28.
//  Copyright (c) 2015年 郭振伟. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //MyPlist.plist 支持多语言 英文环境加载英文  中文环境加载中文
    NSString *path = [[NSBundle mainBundle]pathForResource:@"MyPlist" ofType:@"plist"];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:path];
    NSLog(@"value:%@",dict[@"username"]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
