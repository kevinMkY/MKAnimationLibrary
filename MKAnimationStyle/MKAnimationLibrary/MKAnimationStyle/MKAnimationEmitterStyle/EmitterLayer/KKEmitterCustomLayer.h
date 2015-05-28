//
//  KKEmitterCustomLayer.h
//  Snowing
//
//  Created by ykh on 15/1/16.
//  Copyright (c) 2015年 YKH. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>
#import "KKEmitterSnowCell.h"
@interface KKEmitterCustomLayer : CAEmitterLayer

/**
*  雪花粒子效果,显示在传入view的图层上
*
*  @param view      需要显示雪花的view,超出view范围会消失
*  @param position  雪花发射器的位置
*  @param direction 雪花飘向的方向
*  @param radious   雪花粒子大小
*  @param cellImg   雪花图片,不传为默认
*/
+(void)snowLayerInView:(UIView *)view atPosition:(CGPoint)position andDirection:(KKEmitterSnowCellDirection)direction andRadious:(CGFloat)radious andCellImg:(NSString *)cellImg;

/**
 *  将默认雪花效果显示到传入的view上
 *
 *  @param view 需要显示雪花效果的view
 */
+(void)addSnowLayerInView:(UIView *)view;

@end
