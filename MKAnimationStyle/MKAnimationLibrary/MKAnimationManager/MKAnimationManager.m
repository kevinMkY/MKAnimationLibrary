//
//  MKAnimationManager.m
//  MKAnimationStyle
//
//  Created by ykh on 15/5/28.
//  Copyright (c) 2015年 YKH. All rights reserved.
//

#import "MKAnimationManager.h"
#import "MKEmitterCustomLayer.h"

@implementation MKAnimationManager

static id manager;

+(instancetype)shareInstancetype{

    MKAnimationManager *animationManager=[[MKAnimationManager alloc] init];
    
    return animationManager;

}

-(void)showAnimationInView:(UIView *)superView withAnimationStyle:(MKAnimationStyle)MKAnimationStyle{


    switch (MKAnimationStyle) {
        case MKAnimationStyleOfSnow:

            [MKEmitterCustomLayer addSnowLayerInView:superView];
            break;
        case MKAnimationStyleOfLeaves:
            [MKEmitterCustomLayer addleavesLayerInView:superView];
            break;
            
        default:
            
            break;
    }
    
}

+(instancetype)allocWithZone:(struct _NSZone *)zone{

    static dispatch_once_t onceToke;
    dispatch_once(&onceToke, ^{
        if (manager == nil) {
            manager = [super allocWithZone:zone];
        }
    });

    return manager;
}

@end
