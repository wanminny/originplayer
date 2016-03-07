//
//  ViewController.m
//  原生播放器
//
//  Created by wan on 16/3/7.
//  Copyright © 2016年 wan. All rights reserved.
//

#import "ViewController.h"
#import  <MediaPlayer/MediaPlayer.h>
#import  "WscViewController.h"

@interface ViewController ()

/** <#注释#> */
@property (nonatomic,strong) MPMoviePlayerController  *mp;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.mp = [[MPMoviePlayerController alloc] init];
    
    self.mp .view.frame = CGRectMake(0, 64, self.view.frame.size.width, 200);
    self.mp .controlStyle = MPMovieControlStyleEmbedded;
    
//    NSString *url = [NSString stringWithUTF8String:"http://mp4.68mtv.com/mp41/40293-筷子兄弟-小苹果[68mtv.com].mp4"];
    
    NSString *url  = @"http://mp4.68mtv.com/mp41/40293-筷子兄弟-小苹果[68mtv.com].mp4";
    NSString *encode = [url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    self.mp .contentURL = [NSURL URLWithString:encode];
    self.mp .shouldAutoplay = YES;

    [self.mp  prepareToPlay];
    [self.mp  play];

    
    [self.view addSubview:self.mp.view];
    
    UIButton *btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(self.view.frame.size.width/2, 300, 50, 30);
    btn.backgroundColor = [UIColor orangeColor];
    [btn addTarget:self action:@selector(wsc) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}


-(void)wsc
{
    
    WscViewController *wsc = [[WscViewController alloc] init];
    [self presentViewController:wsc animated:YES completion:^{
        
    }];
}



@end
