//
//  KKEmitterCustomLayer.m
//  Snowing
//
//  Created by ykh on 15/1/16.
//  Copyright (c) 2015年 YKH. All rights reserved.
//

#import "KKEmitterCustomLayer.h"
#import "KKEmitterSnowCell.h"
#import "UIImage+Extension.h"

@implementation KKEmitterCustomLayer

#pragma mark 雪花

+(instancetype)snowLayerInView:(UIView *)view atPosition:(CGPoint)position inSize:(CGSize)size
{
    
    KKEmitterCustomLayer *snowEmitter = (KKEmitterCustomLayer*)[CAEmitterLayer layer];
    
    //例子发射器位置，可以动态设置
    snowEmitter.emitterPosition =position;
    snowEmitter.emitterSize = CGSizeMake(size.width, size.height);
    
    //超出图层的雪花全部裁掉
    view.layer.masksToBounds=YES;
    
    //发射模式
    snowEmitter.emitterMode = kCAEmitterLayerSurface;

    
    //粒子边缘的颜色,设置白色会有模糊效果
    snowEmitter.shadowColor = [[UIColor whiteColor] CGColor];
    
    //添加图层到显示雪花的view的layer
    [view.layer addSublayer:snowEmitter];
    
    return snowEmitter;
}

+(void)snowLayerInView:(UIView *)view atPosition:(CGPoint)position andDirection:(KKEmitterSnowCellDirection)direction andRadious:(CGFloat)radious andCellImg:(NSString *)cellImg
{
    //创建雪花所在图层layer
    KKEmitterCustomLayer *snowLayer=[self snowLayerInView:view atPosition:position inSize:CGSizeMake(view.frame.size.width, view.frame.size.height)];

    //粒子
    KKEmitterSnowCell *emitterCell=[KKEmitterSnowCell emitterSnowCellWithCellImg:cellImg andRadious:radious andVelocity:20 andDirection:direction];
    
    snowLayer.emitterCells=@[emitterCell];
}



+(void)addSnowLayerInView:(UIView *)view
{
    
    //雪花粒子所在view,发射雪花的位置,雪花飘向的方向,雪花粒子半径,雪花粒子图片
    [KKEmitterCustomLayer snowLayerInView:view atPosition:CGPointMake(-60,-20) andDirection:KKEmitterSnowCellDirectionToBottom andRadious:19 andCellImg:nil];
    
    [KKEmitterCustomLayer snowLayerInView:view atPosition:CGPointMake(-60,-20) andDirection:KKEmitterSnowCellDirectionToBottom andRadious:9 andCellImg:nil];
    
    [KKEmitterCustomLayer snowLayerInView:view atPosition:CGPointMake(-60,view.frame.size.height*0.33) andDirection:KKEmitterSnowCellDirectionToBottom andRadious:14 andCellImg:nil];
    
}

-(void)dealloc{


    
    NSLog(@"雪花粒子发射器销毁了");

}
@end
