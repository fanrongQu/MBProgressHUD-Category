//
//  MBProgressHUD+Category.m
//  HudDemo
//
//  Created by 1860 on 16/8/24.
//  Copyright © 2016年 Qu Fanrong. All rights reserved.
//

#import "MBProgressHUD+Category.h"

@implementation MBProgressHUD (Category)


+ (void)showTitle:(NSString *)text detailsLabel:(NSString *)detailText icon:(NSString *)icon contentColor:(UIColor *)color inView:(UIView *)view {
    
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    
    hud.contentColor = color;
    hud.bezelView.color = [UIColor colorWithRed:192/255.0 green:192/255.0 blue:192/255.0 alpha:0.8];
//    hud.minSize = CGSizeMake(160.f, 100.f);
    
    hud.label.text = text;
   
    if (icon.length > 0) {
        hud.mode = MBProgressHUDModeCustomView;
        hud.detailsLabel.text = detailText;
        
        NSBundle *bundle = [NSBundle bundleForClass:[MBProgressHUD class]];
        NSURL *url = [bundle URLForResource:@"MBProgressHUD" withExtension:@"bundle"];
        NSBundle *imageBundle = [NSBundle bundleWithURL:url];
        NSString *path = [imageBundle pathForResource:icon ofType:@"png"];
        UIImage *image = [[UIImage imageWithContentsOfFile:path] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
        
        hud.customView = [[UIImageView alloc] initWithImage:image];
    }else {
        hud.mode = MBProgressHUDModeText;
    }
//    hud.backgroundColor = [UIColor redColor];
    
    [hud hideAnimated:YES afterDelay:1.5];

}


+ (MBProgressHUD *)showTitle:(NSString *)text detailsLabel:(NSString *)detailText contentColor:(UIColor *)color progressHUDMode:(MBProgressHUDMode)progressHUDMode inView:(UIView *)view {
    
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    
    hud.contentColor = color;
    hud.bezelView.color = [UIColor colorWithRed:192/255.0 green:192/255.0 blue:192/255.0 alpha:0.8];
//    hud.minSize = CGSizeMake(160.f, 100.f);
    
    hud.label.text = text;
    
    hud.mode = progressHUDMode;
    
//    MBProgressHUDModeIndeterminate;系统默认
//    MBProgressHUDModeAnnularDeterminate;//圆形加载
//    MBProgressHUDModeDeterminateHorizontalBar;//水平加载
//    MBProgressHUDModeDeterminate;//双环形圆行加载
    
    hud.detailsLabel.text = detailText;
    
    return hud;
}

+ (void)hideHUDForView:(UIView *)view
{
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject]; 
    [self hideHUDForView:view animated:YES];
}

+ (void)hideHUD
{
    [self hideHUDForView:nil];
}

#pragma mark - 事件
/**
 *  活动指示器
 */
+ (MBProgressHUD *)showActivityIndicatorWithTitle:(NSString *)title detailsTitle:(NSString *)detailTitle contentColor:(UIColor *)color progressHUDMode:(MBProgressHUDMode)progressHUDMode inView:(UIView *)view {
    return [self showTitle:title detailsLabel:detailTitle contentColor:color progressHUDMode:progressHUDMode inView:view];
}

+ (MBProgressHUD *)showActivityIndicatorWithTitle:(NSString *)title contentColor:(UIColor *)color progressHUDMode:(MBProgressHUDMode)progressHUDMode inView:(UIView *)view {
    return [self showActivityIndicatorWithTitle:title detailsTitle:nil contentColor:color progressHUDMode:progressHUDMode inView:view];
}

+ (MBProgressHUD *)showActivityIndicatorWithContentColor:(UIColor *)color progressHUDMode:(MBProgressHUDMode)progressHUDMode inView:(UIView *)view {
    return [self showActivityIndicatorWithTitle:nil contentColor:color progressHUDMode:progressHUDMode inView:view];
}

+ (MBProgressHUD *)showActivityIndicatorWithProgressHUDMode:(MBProgressHUDMode)progressHUDMode inView:(UIView *)view {
    return [self showActivityIndicatorWithContentColor:[UIColor blackColor] progressHUDMode:progressHUDMode inView:view];
}


+ (MBProgressHUD *)showActivityIndicatorWithContentColor:(UIColor *)color progressHUDMode:(MBProgressHUDMode)progressHUDMode {
    return [self showActivityIndicatorWithContentColor:color progressHUDMode:progressHUDMode inView:nil];
}

+ (MBProgressHUD *)showActivityIndicatorWithProgressHUDMode:(MBProgressHUDMode)progressHUDMode {
    return [self showActivityIndicatorWithContentColor:[UIColor blackColor] progressHUDMode:progressHUDMode inView:nil];
}

/**
 *  带有进度的需要设置
 * Set up NSPorgress
 
	NSProgress *progressObject = [NSProgress progressWithTotalUnitCount:100];
	hud.progressObject = progressObject;
 
	// Configure a cacnel button.
	[hud.button setTitle:NSLocalizedString(@"Cancel", @"HUD cancel button title") forState:UIControlStateNormal];
	[hud.button addTarget:progressObject action:@selector(cancelWork) forControlEvents:UIControlEventTouchUpInside];
 
    之后调用
 
     - (void)doSomeWorkWithProgressObject:(NSProgress *)progressObject {
     self.canceled = NO;
        // This just increases the progress indicator in a loop.
    while (progressObject.fractionCompleted < 1.0f) {
         if (self.canceled) break;
         [progressObject becomeCurrentWithPendingUnitCount:1];
         [progressObject resignCurrent];
         usleep(50000);
        }
     }
 
     - (void)cancelWork {
         self.canceled = YES;
     }
 *
 */


#pragma mark - 提示状态
//成功
+ (void)showSuccess:(NSString *)success contentColor:(UIColor *)color inView:(UIView *)view {
    
    [self showTitle:success detailsLabel:nil icon:@"HUDsuccess" contentColor:color inView:view];
}
+ (void)showSuccess:(NSString *)success inView:(UIView *)view {
    [self showSuccess:success contentColor:[UIColor blackColor] inView:view];
}
+ (void)showSuccess:(NSString *)success contentColor:(UIColor *)color {
    [self showSuccess:success contentColor:color inView:nil];
}
+ (void)showSuccess:(NSString *)success {
    [self showSuccess:success contentColor:[UIColor blackColor] inView:nil];
}


//失败
+ (void)showError:(NSString *)error contentColor:(UIColor *)color inView:(UIView *)view {
    [self showTitle:error detailsLabel:nil icon:@"HUDerror" contentColor:color inView:view];
}
+ (void)showError:(NSString *)success inView:(UIView *)view {
    [self showError:success contentColor:[UIColor blackColor] inView:view];
}
+ (void)showError:(NSString *)success contentColor:(UIColor *)color {
    [self showError:success contentColor:color inView:nil];
}
+ (void)showError:(NSString *)success {
    [self showError:success contentColor:[UIColor blackColor] inView:nil];
}


//警告
+ (void)showInfo:(NSString *)info contentColor:(UIColor *)color inView:(UIView *)view {
    [self showTitle:info detailsLabel:nil icon:@"HUDinfo" contentColor:color inView:view];
}
+ (void)showInfo:(NSString *)success inView:(UIView *)view {
    [self showInfo:success contentColor:[UIColor blackColor] inView:view];
}
+ (void)showInfo:(NSString *)success contentColor:(UIColor *)color {
    [self showInfo:success contentColor:color inView:nil];
}
+ (void)showInfo:(NSString *)success {
    [self showInfo:success contentColor:[UIColor blackColor] inView:nil];
}


//提醒
+ (void)showMessage:(NSString *)message contentColor:(UIColor *)color inView:(UIView *)view {
    [self showTitle:message detailsLabel:nil icon:nil contentColor:color inView:view];
}
+ (void)showMessage:(NSString *)success inView:(UIView *)view {
    [self showMessage:success contentColor:[UIColor blackColor] inView:view];
}
+ (void)showMessage:(NSString *)success contentColor:(UIColor *)color {
    [self showMessage:success contentColor:color inView:nil];
}
+ (void)showMessage:(NSString *)success {
    [self showMessage:success contentColor:[UIColor blackColor] inView:nil];
}





@end
