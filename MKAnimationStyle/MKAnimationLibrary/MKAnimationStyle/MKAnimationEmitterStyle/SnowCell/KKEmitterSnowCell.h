//
//  CAEmitterSnowCell.h
//  Snowing
//
//  Created by ykh on 15/1/16.
//  Copyright (c) 2015年 YKH. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>
#import "UIImage+Extension.h"
//雪花飘散方向
typedef enum{
    KKEmitterSnowCellDirectionToLeft,
    KKEmitterSnowCellDirectionToRight,
    KKEmitterSnowCellDirectionToTop,
    KKEmitterSnowCellDirectionToBottom,
    //流星
    KKEmitterShootStarCellDirectionToBottomAndRight
    
    
} KKEmitterSnowCellDirection;

@interface KKEmitterSnowCell : CAEmitterCell
/**
 *  传入粒子图片样式名称,粒子半径,粒子移动速度,生成粒子
 *
 *  @param cellImg  粒子图片样式名称
 *  @param radious  粒子半径
 *  @param velocity 粒子移动速度
 *
 *  @return 粒子
 */
+(instancetype)emitterSnowCellWithCellImg:(NSString *)cellImg andRadious:(CGFloat)radious andVelocity:(CGFloat)velocity andDirection:(KKEmitterSnowCellDirection)direction;

@end
