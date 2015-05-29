//
//  PublicParticleCell.h
//  MKAnimationStyle
//
//  Created by ykh on 15/5/28.
//  Copyright (c) 2015年 YKH. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
//飘散方向
typedef enum{
    MKEmitterParticleCellDirectionToLeft,
    MKEmitterParticleCellDirectionToRight,
    MKEmitterParticleCellDirectionToTop,
    MKEmitterParticleCellDirectionToBottom,
} MKEmitterParticleCellDirection;

@interface MKPublicParticleCell : CAEmitterCell

@end
