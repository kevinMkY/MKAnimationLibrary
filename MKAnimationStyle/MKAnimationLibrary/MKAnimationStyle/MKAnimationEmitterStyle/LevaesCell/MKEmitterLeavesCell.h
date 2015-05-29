//
//  CAEmitterleavesCell.h
//  leavesing
//
//  Created by ykh on 15/1/16.
//  Copyright (c) 2015年 YKH. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>
#import "UIImage+Extension.h"
#import "MKPublicParticleCell.h"

@interface MKEmitterLeavesCell : MKPublicParticleCell
/**
 *  传入粒子图片样式名称,粒子半径,粒子移动速度,生成粒子
 *
 *  @param cellImg  粒子图片样式名称
 *  @param radious  粒子半径
 *  @param velocity 粒子移动速度
 *
 *  @return 粒子
 */
+(instancetype)leavesCellWithCellImg:(NSString *)cellImg andRadious:(CGFloat)radious andVelocity:(CGFloat)velocity andDirection:(MKEmitterParticleCellDirection)direction;

@end
