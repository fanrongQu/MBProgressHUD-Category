//
//  MBProgressHUD+Category.m
//  HudDemo
//
//  Created by 1860 on 16/8/24.
//  Copyright © 2016年 FanrongQu. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (Category)

/**
 *  提醒HUD
 *
 *  @param text       提醒标题
 *  @param detailText 副标题
 *  @param icon       图片
 *  @param color      颜色
 *  @param view       显示的view
 */
+ (void)showTitle:(NSString *)text detailsLabel:(NSString *)detailText icon:(NSString *)icon contentColor:(UIColor *)color inView:(UIView *)view;

/**
 *  带有活动指示器的HUD
 *
 *  @param text            标题
 *  @param detailText      副标题
 *  @param color           颜色
 *  @param progressHUDMode 指示器类型
 *  @param view            显示的view
 *
 *  @return MBProgressHUD对象
 */
+ (MBProgressHUD *)showTitle:(NSString *)text detailsLabel:(NSString *)detailText contentColor:(UIColor *)color progressHUDMode:(MBProgressHUDMode)progressHUDMode inView:(UIView *)view;
/**
 *  隐藏HUD
 *
 *  @param view 需隐藏HUD所在的View
 */
+ (void)hideHUDForView:(UIView *)view;
/**
 *  隐藏HUD
 */
+ (void)hideHUD;

#pragma mark - 事件
/**
 *  带有活动指示器的HUD
 *
 *  @param text            标题
 *  @param detailText      副标题
 *  @param color           颜色
 *  @param progressHUDMode 指示器类型
 *  @param view            显示的view
 *
 *  @return MBProgressHUD对象
 */
+ (MBProgressHUD *)showActivityIndicatorWithTitle:(NSString *)title detailsTitle:(NSString *)detailTitle contentColor:(UIColor *)color progressHUDMode:(MBProgressHUDMode)progressHUDMode inView:(UIView *)view;

/**
 *  带有活动指示器的HUD
 *
 *  @param text            标题
 *  @param detailText      副标题
 *  @param progressHUDMode 指示器类型
 *  @param view            显示的view
 *
 *  @return MBProgressHUD对象
 */
+ (MBProgressHUD *)showActivityIndicatorWithTitle:(NSString *)title detailsTitle:(NSString *)detailTitle progressHUDMode:(MBProgressHUDMode)progressHUDMode inView:(UIView *)view;

/**
 *  带有活动指示器的HUD
 *
 *  @param text            标题
 *  @param detailText      副标题
 *  @param progressHUDMode 指示器类型
 *
 *  @return MBProgressHUD对象
 */
+ (MBProgressHUD *)showActivityIndicatorWithTitle:(NSString *)title detailsTitle:(NSString *)detailTitle progressHUDMode:(MBProgressHUDMode)progressHUDMode;

/**
 *  带有活动指示器的HUD
 *
 *  @param text            标题
 *  @param color           颜色
 *  @param progressHUDMode 指示器类型
 *  @param view            显示的view
 *
 *  @return MBProgressHUD对象
 */
+ (MBProgressHUD *)showActivityIndicatorWithTitle:(NSString *)title contentColor:(UIColor *)color progressHUDMode:(MBProgressHUDMode)progressHUDMode inView:(UIView *)view;

/**
 *  带有活动指示器的HUD
 *
 *  @param text            标题
 *  @param progressHUDMode 指示器类型
 *  @param view            显示的view
 *
 *  @return MBProgressHUD对象
 */
+ (MBProgressHUD *)showActivityIndicatorWithTitle:(NSString *)title progressHUDMode:(MBProgressHUDMode)progressHUDMode inView:(UIView *)view;

/**
 *  带有活动指示器的HUD
 *
 *  @param text            标题
 *  @param progressHUDMode 指示器类型
 *
 *  @return MBProgressHUD对象
 */
+ (MBProgressHUD *)showActivityIndicatorWithTitle:(NSString *)title progressHUDMode:(MBProgressHUDMode)progressHUDMode;

#pragma mark - 提示状态

/**
 *  成功提醒
 *
 *  @param success 提醒文字
 *  @param color   颜色
 *  @param view    显示的view
 */
+ (void)showSuccess:(NSString *)success contentColor:(UIColor *)color inView:(UIView *)view;
/**
 *  成功提醒
 *
 *  @param success 提醒文字
 *  @param view    显示的view
 */
+ (void)showSuccess:(NSString *)success inView:(UIView *)view;
/**
 *  成功提醒
 *
 *  @param success 提醒文字
 *  @param color   颜色
 */
+ (void)showSuccess:(NSString *)success contentColor:(UIColor *)color;
/**
 *  成功提醒
 *
 *  @param success 提醒文字
 */
+ (void)showSuccess:(NSString *)success;



/**
 *  失败提醒
 *
 *  @param success 提醒文字
 *  @param color   颜色
 *  @param view    显示的view
 */
+ (void)showError:(NSString *)error contentColor:(UIColor *)color inView:(UIView *)view;
/**
 *  失败提醒
 *
 *  @param success 提醒文字
 *  @param view    显示的view
 */
+ (void)showError:(NSString *)success inView:(UIView *)view;
/**
 *  失败提醒
 *
 *  @param success 提醒文字
 *  @param color   颜色
 */
+ (void)showError:(NSString *)success contentColor:(UIColor *)color;
/**
 *  失败提醒
 *
 *  @param success 提醒文字
 */
+ (void)showError:(NSString *)success;


/**
 *  警告提醒
 *
 *  @param success 提醒文字
 *  @param color   颜色
 *  @param view    显示的view
 */
+ (void)showInfo:(NSString *)info contentColor:(UIColor *)color inView:(UIView *)view;
/**
 *  警告提醒
 *
 *  @param success 提醒文字
 *  @param view    显示的view
 */
+ (void)showInfo:(NSString *)success inView:(UIView *)view;
/**
 *  警告提醒
 *
 *  @param success 提醒文字
 *  @param color   颜色
 */
+ (void)showInfo:(NSString *)success contentColor:(UIColor *)color;
/**
 *  警告提醒
 *
 *  @param success 提醒文字
 */
+ (void)showInfo:(NSString *)success;


/**
 *  提醒
 *
 *  @param success 提醒文字
 *  @param color   颜色
 *  @param view    显示的view
 */
+ (void)showMessage:(NSString *)message contentColor:(UIColor *)color inView:(UIView *)view;
/**
 *  提醒
 *
 *  @param success 提醒文字
 *  @param view    显示的view
 */
+ (void)showMessage:(NSString *)success inView:(UIView *)view;
/**
 *  提醒
 *
 *  @param success 提醒文字
 *  @param color   颜色
 */
+ (void)showMessage:(NSString *)success contentColor:(UIColor *)color;
/**
 *  提醒
 *
 *  @param success 提醒文字
 */
+ (void)showMessage:(NSString *)success;




@end

