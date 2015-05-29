# MKAnimationLibrary
MK动画库

使用方法:
1.导入头文件
#import "MKAnimationManager.h"
2.调用单例传入需要显示动画效果的view,并告知想要执行的动画效果style
[[MKAnimationManager shareInstancetype] showAnimationInView:self.topView withAnimationStyle:MKAnimationStyleOfSnow];


目前支持的动画style:
1.MKAnimationStyleOfSnow
2.MKAnimationStyleOfLeaves


素材来自网络,此处谨做学习使用,如有侵权,请告知我,我会尽快删除~
