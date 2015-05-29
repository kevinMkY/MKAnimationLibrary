//
//  ViewController.m
//  MKAnimationStyle
//
//  Created by ykh on 15/5/28.
//  Copyright (c) 2015年 YKH. All rights reserved.
//

#import "ViewController.h"
#import "UIView+RMAdditions.h"
#import "MKAnimationManager.h"

@interface ViewController ()

@property (nonatomic,weak) UIView  *topView;
@property (nonatomic,weak) UIView  *middleView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self addTopView];
    
    [self addMiddleView];
    
    
    
}

-(void)addTopView{

    UIView *topView = [[UIView alloc] init];
    [self.view addSubview:topView];
    self.topView = topView;
    
    UIImageView *imgV=[[UIImageView alloc] init];
    UIImage *img = [UIImage imageNamed:@"pic3.jpg"];
    [topView addSubview:imgV];
    imgV.image = img;
    
    CGFloat scale = img.size.width/(img.size.height*1.0);
    CGFloat margin = 20;
    imgV.width = MKScreenWidth - margin *2;
    imgV.height = imgV.width/scale;
    
    topView.width = imgV.width;
    topView.height = imgV.height;
    topView.x = margin;
    topView.y = margin;
    
    
    [[MKAnimationManager shareInstancetype] showAnimationInView:self.topView withAnimationStyle:MKAnimationStyleOfSnow];

    
    
}

-(void)addMiddleView{


    UIView *topView = [[UIView alloc] init];
    [self.view addSubview:topView];
    self.middleView = topView;
    
    UIImageView *imgV=[[UIImageView alloc] init];
    UIImage *img = [UIImage imageNamed:@"pic7.jpg"];
    [topView addSubview:imgV];
    imgV.image = img;
    
    CGFloat scale = img.size.width/(img.size.height*1.0);
    CGFloat margin = 20;
    imgV.width = MKScreenWidth - margin *2;
    imgV.height = imgV.width/scale;
    
    topView.width = imgV.width;
    topView.height = imgV.height;
    topView.x = margin;
    topView.y = self.topView.bottom+margin;

   [[MKAnimationManager shareInstancetype] showAnimationInView:self.middleView withAnimationStyle:MKAnimationStyleOfLeaves];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
