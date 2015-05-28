//
//  CAEmitterSnowCell.m
//  Snowing
//
//  Created by ykh on 15/1/16.
//  Copyright (c) 2015年 YKH. All rights reserved.
//

#import "KKEmitterSnowCell.h"



@implementation KKEmitterSnowCell

-(instancetype)init{

    if (self=[super init]) {
        //创建雪花形状的粒子
        self = (KKEmitterSnowCell *)[CAEmitterCell emitterCell];
        //粒子的名字
        self.name = @"snow";
        //粒子参数的速度乘数因子
        
        //产生粒子的速率
//        self.birthRate = 1.5;--雪花
                self.birthRate = 0.3;
        //粒子的生命周期
        self.lifetime = 60.0;
        //粒子速度,采用外部设置
//        self.velocity=10.0;
        //粒子的速度变化范围
        self.velocityRange =self.velocity;
        
        //自旋转角度范围
        self.spinRange = 0.5 * M_PI;
        
        
    }
    return self;
}

+(instancetype)emitterSnowCellWithCellImg:(NSString *)cellImg andRadious:(CGFloat)radious andVelocity:(CGFloat)velocity andDirection:(KKEmitterSnowCellDirection)direction
{

   NSString * const snowPic = @"leaves.png";//雪花图片样式
    
    KKEmitterSnowCell *cell=[[self alloc] init];
   
    //设置雪花图片
    UIImage *img;
    if (cellImg.length==0) {
    
        img=[UIImage imageNamed:snowPic];
    }else{
    
        img=[UIImage imageNamed:cellImg];
    }
    //设置雪花半径大小
    img=[UIImage image:img scaleToSize:CGSizeMake(radious, radious)];
    cell.contents=(id)[img CGImage];
    
    //速率与半径大小正相关
//    cell.velocity=radious*3;---xuehua
        cell.velocity=radious*2;
    
    //设置雪花飘向的方向
    switch (direction) {
        case KKEmitterSnowCellDirectionToLeft:
            //重力加速方向,y代表竖直,x为横向,数值越大,速度越快
            cell.xAcceleration=-1;
            //向周围发散的角度
            cell.emissionRange = -0.5* M_PI;
            break;
        case KKEmitterSnowCellDirectionToRight:
            cell.xAcceleration=1;
            cell.emissionRange = 0.25* M_PI;
            break;
        case KKEmitterSnowCellDirectionToTop:
            cell.yAcceleration=-1;
            cell.emissionRange = 0.5* M_PI;
            break;
        case KKEmitterSnowCellDirectionToBottom:
            cell.yAcceleration=1;
            cell.emissionRange = 0.5* M_PI;
            break;
            
        case KKEmitterShootStarCellDirectionToBottomAndRight:
            #warning 让流星倾斜
            cell.emissionLongitude = 
            cell.yAcceleration=20;
            
            break;
    }
    
    return cell;

}
@end
