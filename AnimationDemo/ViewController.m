//
//  ViewController.m
//  AnimationDemo
//
//  Created by lhl on 15/4/8.
//  Copyright (c) 2015年 lhl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self startAnmation1];
    
    [self startAnmation2];
}

- (void)startAnmation1{
    /****
     * 正常咀嚼动画
     */
    UIImageView *anmationView = [[UIImageView alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 50) /2, 100, 50, 50)];
    [self.view addSubview:anmationView];
    
    NSMutableArray *anmationImage1 = [NSMutableArray array];
    for (int i = 0; i < 3; i ++) {
        NSString *imageStr = [NSString stringWithFormat:@"dropdown_loading_0%d",i+1];
        [anmationImage1 addObject:[UIImage imageNamed:imageStr]];
        
    }
    
    anmationView.animationImages = anmationImage1;
    anmationView.animationDuration = 1;
    anmationView.animationRepeatCount = GID_MAX;
    [anmationView startAnimating];
}


- (void)startAnmation2{
    /*****
     *  吃包子动画
     */
    
    UIImageView *anmationView = [[UIImageView alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 50) /2, 250, 50, 50)];
    [self.view addSubview:anmationView];
    
    NSMutableArray *anmationImage1 = [NSMutableArray array];
    for (int i = 9; i < 60; i ++) {
        NSString *imageStr = [NSString stringWithFormat:@"dropdown_anim__000%d",i+1];
        [anmationImage1 addObject:[UIImage imageNamed:imageStr]];
        
    }
    
    anmationView.animationImages = anmationImage1;
    anmationView.animationDuration = 2;
    anmationView.animationRepeatCount = GID_MAX;
    [anmationView startAnimating];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
