//
//  MKEmitterCustomLayer.m
//  Snowing
//
//  Created by ykh on 15/1/16.
//  Copyright (c) 2015年 YKH. All rights reserved.
//

#import "MKEmitterCustomLayer.h"
#import "MKEmitterSnowCell.h"
#import "UIImage+Extension.h"
#import "MKEmitterLeavesCell.h"

@implementation MKEmitterCustomLayer

#pragma mark 粒子发射器

//下面这个方法公用,发射器的参数由外部传入
+ (instancetype)addCustomLayerInView:(UIView *)view atPosition:(CGPoint)position inSize:(CGSize)size
{
    MKEmitterCustomLayer *leavesEmitter = (MKEmitterCustomLayer*)[CAEmitterLayer layer];
    
    //例子发射器位置，可以动态设置
    leavesEmitter.emitterPosition =position;
    leavesEmitter.emitterSize = CGSizeMake(size.width, size.height);
    
    //超出图层的雪花全部裁掉
    view.layer.masksToBounds=YES;
    
    //发射模式
    leavesEmitter.emitterMode = kCAEmitterLayerSurface;
    
    //粒子边缘的颜色,设置白色会有模糊效果
    leavesEmitter.shadowColor = [[UIColor whiteColor] CGColor];
    
    //添加图层到显示雪花的view的layer
    [view.layer addSublayer:leavesEmitter];
    
    return leavesEmitter;
}

#pragma mark 树叶

+ (void)leavesLayerInView:(UIView *)view atPosition:(CGPoint)position andDirection:(MKEmitterParticleCellDirection)direction andRadious:(CGFloat)radious andCellImg:(NSString *)cellImg
{
    //创建树叶所在图层layer
    MKEmitterCustomLayer *leavesLayer=[self addCustomLayerInView:view atPosition:position inSize:CGSizeMake(view.frame.size.width, view.frame.size.height)];

    //粒子
    MKEmitterLeavesCell *emitterCell = [MKEmitterLeavesCell leavesCellWithCellImg:cellImg andRadious:radious andVelocity:20 andDirection:direction];
    
    leavesLayer.emitterCells=@[emitterCell];
}

+ (void)addleavesLayerInView:(UIView *)view
{
    //树叶粒子所在view,发射树叶的位置,树叶飘向的方向,树叶粒子半径,树叶粒子图片
    [MKEmitterCustomLayer leavesLayerInView:view atPosition:CGPointMake(-60,-20) andDirection:MKEmitterParticleCellDirectionToBottom andRadious:19 andCellImg:nil];
    
    [MKEmitterCustomLayer leavesLayerInView:view atPosition:CGPointMake(-60,-20) andDirection:MKEmitterParticleCellDirectionToBottom andRadious:9 andCellImg:nil];
    
    [MKEmitterCustomLayer leavesLayerInView:view atPosition:CGPointMake(-60,view.frame.size.height*0.33) andDirection:MKEmitterParticleCellDirectionToBottom andRadious:14 andCellImg:nil];
    
}

#pragma mark 雪花

+(void)snowLayerInView:(UIView *)view atPosition:(CGPoint)position andDirection:(MKEmitterParticleCellDirection)direction andRadious:(CGFloat)radious andCellImg:(NSString *)cellImg
{
    //创建雪花所在图层layer
    MKEmitterCustomLayer *snowLayer=[self addCustomLayerInView:view atPosition:position inSize:CGSizeMake(view.frame.size.width, view.frame.size.height)];
    
    //粒子
    MKEmitterSnowCell *emitterCell=[MKEmitterSnowCell snowCellWithCellImg:cellImg andRadious:radious andVelocity:20 andDirection:direction];
    
    snowLayer.emitterCells=@[emitterCell];
}

+(void)addSnowLayerInView:(UIView *)view
{
    
    //雪花粒子所在view,发射雪花的位置,雪花飘向的方向,雪花粒子半径,雪花粒子图片
    [MKEmitterCustomLayer snowLayerInView:view atPosition:CGPointMake(-60,-20) andDirection:MKEmitterParticleCellDirectionToBottom andRadious:19 andCellImg:nil];
    
    [MKEmitterCustomLayer snowLayerInView:view atPosition:CGPointMake(-60,-20) andDirection:MKEmitterParticleCellDirectionToBottom andRadious:9 andCellImg:nil];
    
    [MKEmitterCustomLayer snowLayerInView:view atPosition:CGPointMake(-60,view.frame.size.height*0.33) andDirection:MKEmitterParticleCellDirectionToBottom andRadious:14 andCellImg:nil];
    
}





- (void)dealloc{


    
    NSLog(@"雪花粒子发射器销毁了");

}
@end
