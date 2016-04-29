//
//  ViewController.m
//  简单的代理与block实现方式
//
//  Created by cheng on 16/4/29.
//  Copyright © 2016年 cheng. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"
@interface ViewController ()<NextViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.firstLabel.adjustsFontSizeToFitWidth = YES;
    self.secondLabel.adjustsFontSizeToFitWidth = YES;
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)changeTextValue:(NSString *)tfText
{
    self.firstLabel.text = tfText;
}
- (void)changeTextValueTwo:(NSString *)tfText
{
    self.secondLabel.text = tfText;
}
- (IBAction)GotoNextPage:(id)sender
{
    NextViewController *nextVC = [[NextViewController alloc]init];
    nextVC.delegate = self;
    [self.navigationController pushViewController:nextVC animated:YES];
}
- (IBAction)GotoNextPageTwo:(id)sender
{
    NextViewController *nextVC = [[NextViewController alloc]init];
    nextVC.NextViewControllerBlock = ^(NSString *tfText){
        [self changeTextValueTwo:tfText];
    };
    [self.navigationController pushViewController:nextVC animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
