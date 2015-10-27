# MKAnimationLibrary
MK动画库

效果展示:
![](http://img01.taobaocdn.com/imgextra/i1/90628312/TB2AvOmcVXXXXaLXpXXXXXXXXXX_!!90628312.gif) 

使用方法:
1.导入头文件
----
```oc
#import "MKAnimationManager.h"
```
 
2.调用单例传入需要显示动画效果的view,并告知想要执行的动画效果style
----
```oc
[[MKAnimationManager shareInstancetype] showAnimationInView:destinationView withAnimationStyle:MKAnimationStyleOfSnow];
```

目前支持的动画style:
----
```oc
1.MKAnimationStyleOfSnow
2.MKAnimationStyleOfLeaves
```
后续会不断添加新的动画效果,希望同各位多交流

PS:素材来自网络,此处谨做学习使用,如有侵权,请告知我,我会尽快删除~

