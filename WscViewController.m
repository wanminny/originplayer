
//
//  WscViewController.m
//  原生播放器
//
//  Created by wan on 16/3/7.
//  Copyright © 2016年 wan. All rights reserved.
//

#import "WscViewController.h"

@interface WscViewController ()

/** <#注释#> */
//@property (nonatomic,strong) UIWebView  *web;

@end

@implementation WscViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *url  = [NSURL URLWithString:@"http://wsc.51dh.com.cn"];
//    NSURL *url = [[NSURL alloc] initWithString:@"http://wsc.51dh.com.cn"];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //没有设置大小 所有不显示！！
     UIWebView  *web= [[UIWebView alloc] initWithFrame:self.view.bounds];
    [web loadRequest:request];
//    _web = web;
    [self.view addSubview:web];
    // Do any additional setup after loading the view.
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

@end
