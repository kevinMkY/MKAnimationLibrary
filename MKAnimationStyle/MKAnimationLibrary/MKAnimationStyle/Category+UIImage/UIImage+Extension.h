//
//  UIImage+Extension.h
//  Snowing
//
//  Created by ykh on 15/1/16.
//  Copyright (c) 2015年 YKH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)
/**
 *  传入一张图片,缩放到指定大小
 *
 *  @param img  传入的图片
 *  @param size 指定缩放到的尺寸
 *
 *  @return 返回指定大小的图片
 */
+(UIImage *)image:(UIImage *)img scaleToSize:(CGSize)size;
/**
 *  传入一张图片,缩放到指定比例
 *
 *  @param img   需要缩放的图片
 *  @param scale 缩放的比例
 *
 *  @return 返回指定缩放比例的图片
 */
+(UIImage *)image:(UIImage *)img scale:(CGFloat)scale;


/**
 *  使用imge 作为另一个 imge的 遮罩 返回遮罩后的img
 *
 *  @param image
 *  @param maskImage
 *
 *  @return
 */
+ (UIImage*) maskImage:(UIImage *)image withMask:(UIImage *)maskImage;
@end
