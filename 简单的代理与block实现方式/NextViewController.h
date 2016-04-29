//
//  NextViewController.h
//  简单的代理与block实现方式
//
//  Created by cheng on 16/4/29.
//  Copyright © 2016年 cheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NextViewControllerDelegate<NSObject>
- (void)changeTextValue:(NSString *)tfText;
@end
@interface NextViewController : UIViewController
@property (nonatomic, assign) id<NextViewControllerDelegate>delegate;

@end
