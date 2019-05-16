//
//  ViewController.m
//  WZZAFHttpDemo
//
//  Created by wyq_iMac on 2019/5/16.
//  Copyright © 2019 wzz. All rights reserved.
//

#import "ViewController.h"
#import "../../WZZAFHttpTool/WZZAFHttpTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableDictionary * dic = [NSMutableDictionary dictionary];
    dic[@"account"] = @"wangmode";
    dic[@"password"] = @"123456";
    [WZZAFHttpTool POST:@"http://fashion.gusishu.com/api/user/login.html" httpBody:dic successBlock:^(id httpResponse) {
        NSLog(@"%@", httpResponse);
    } failedBlock:^(NSError *httpError) {
        NSLog(@"%@", httpError);
    } configBlock:^(AFHTTPSessionManager *manager) {
        
    }];
}


@end
