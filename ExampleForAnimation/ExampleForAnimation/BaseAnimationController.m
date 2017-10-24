//
//  BaseAnimationController.m
//  ExampleForAnimation
//
//  Created by xpchina2003 on 2017/10/24.
//  Copyright © 2017年 xpchina2003. All rights reserved.
//

#import "BaseAnimationController.h"

@interface BaseAnimationController ()

@end

@implementation BaseAnimationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    // ---------------------------- 旋转动画 -----------------------------
    
    UIView *rorationViewX = [[UIView alloc] initWithFrame:CGRectMake(20, 100, 70, 70)];
    rorationViewX.backgroundColor = [UIColor redColor];
    [self.view addSubview:rorationViewX];
    CABasicAnimation *rorationAniX = [CABasicAnimation animationWithKeyPath:@"transform.rotation.x"];
    rorationAniX.beginTime = 0.0;
    rorationAniX.toValue = @(2 * M_PI);
    rorationAniX.duration = 2;
    rorationAniX.repeatCount = MAXFLOAT;
    [rorationViewX.layer addAnimation:rorationAniX forKey:@"rorationAniX"];
    
    
    UIView *rorationViewY = [[UIView alloc] initWithFrame:CGRectMake(150, 100, 70, 70)];
    rorationViewY.backgroundColor = [UIColor redColor];
    [self.view addSubview:rorationViewY];
    CABasicAnimation *rorationAniY = [CABasicAnimation animationWithKeyPath:@"transform.rotation.y"];
    rorationAniY.beginTime = 0.0;
    rorationAniY.toValue = @(2 * M_PI);
    rorationAniY.duration = 2;
    rorationAniY.repeatCount = HUGE_VALF;
    [rorationViewY.layer addAnimation:rorationAniY forKey:nil];
    
    UIView *rorationViewZ = [[UIView alloc] initWithFrame:CGRectMake(280, 100, 70, 70)];
    rorationViewZ.backgroundColor = [UIColor redColor];
    [self.view addSubview:rorationViewZ];
    CABasicAnimation *rorationAniZ = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rorationAniZ.beginTime = 0;
    rorationAniZ.toValue = @(2 * M_PI);
    rorationAniZ.repeatCount = MAXFLOAT;
    rorationAniZ.duration = 2.0;
//    CAMediaTimingFunction *fun = CAMeda;
    rorationAniZ.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
//    rorationAniZ.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut);
    [rorationViewZ.layer addAnimation:rorationAniZ forKey:nil];
    
    // ------------------------------ 位移动画 ------------------------------------
    UIView *moveView = [[UIView alloc] initWithFrame:CGRectMake(20, 240, 70, 70)];
    moveView.center = CGPointMake(40, 200);
    moveView.backgroundColor = [UIColor redColor];
    [self.view addSubview:moveView];
    CABasicAnimation *moveAni = [CABasicAnimation animationWithKeyPath:@"position"];
    moveAni.fromValue =  [NSValue valueWithCGPoint:CGPointMake(40, 240)];
    moveAni.toValue = [NSValue valueWithCGPoint:CGPointMake(300, 240)];
    moveAni.duration = 2;
    moveAni.repeatCount = MAXFLOAT;
    moveAni.autoreverses = TRUE;
    [moveView.layer addAnimation:moveAni forKey:nil];
    
    // ----------------------------- 背景颜色变换 -------------------------------------
    UIView *bgView = [[UIView alloc] initWithFrame:CGRectMake(20, 310, 70, 70)];
    bgView.backgroundColor = [UIColor redColor];
    [self.view addSubview:bgView];
    CABasicAnimation *bgAni = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
//    bgAni.beginTime = 0;
    bgAni.duration = 2;
    bgAni.fromValue = CFBridgingRelease([UIColor redColor].CGColor);
    bgAni.toValue = CFBridgingRelease([UIColor blueColor].CGColor);
    bgAni.repeatCount = MAXFLOAT;
    bgAni.autoreverses = TRUE;
    [bgView.layer addAnimation:bgAni forKey:@"bgAni"];
    
    // ----------------------------- 内容变化变换 -------------------------------------
    UIImageView *contentView = [[UIImageView alloc] initWithFrame:CGRectMake(150, 310, 70, 70)];
    contentView.image = [UIImage imageNamed:@"from"];
    [self.view addSubview:contentView];
    CABasicAnimation *contentAni = [CABasicAnimation animationWithKeyPath:@"contents"];
    contentAni.toValue = CFBridgingRelease([UIImage imageNamed:@"to"].CGImage);
    contentAni.repeatCount = MAXFLOAT;
    contentAni.autoreverses = YES;
    contentAni.duration = 2;
    [contentView.layer addAnimation:contentAni forKey:nil];
    // ----------------------------- 圆角变化 -------------------------------------
    UIView *cornView = [[UIView alloc] initWithFrame:CGRectMake(280, 310, 70, 70)];
    cornView.backgroundColor = [UIColor redColor];
    [self.view addSubview:cornView];
    cornView.layer.masksToBounds = YES;
    CABasicAnimation *corAni = [CABasicAnimation animationWithKeyPath:@"cornerRadius"];
    corAni.toValue = @35;
    corAni.duration = 2;
    corAni.autoreverses = YES;
    corAni.repeatCount = MAXFLOAT;
    [cornView.layer addAnimation:corAni forKey:nil];
    
    // ----------------------------- 比例缩放transform.scale -------------------------------------
    UIView *scale = [[UIView alloc] initWithFrame:CGRectMake(20, 410, 70, 70)];
    scale.backgroundColor = [UIColor redColor];
    [self.view addSubview:scale];
    CABasicAnimation *scaleAni = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    scaleAni.fromValue = @0.3;
    scaleAni.toValue = @1.3;
    scaleAni.duration = 2;
    scaleAni.repeatCount = MAXFLOAT;
    scaleAni.autoreverses = YES;
    [scale.layer addAnimation:scaleAni forKey:nil];
     // ----------------------------- X比例缩放transform.scale.x -------------------------------------
    UIView *scaleX = [[UIView alloc] initWithFrame:CGRectMake(150, 410, 70, 70)];
    scaleX.backgroundColor = [UIColor redColor];
    [self.view addSubview:scaleX];
    CABasicAnimation *scaleAniX = [CABasicAnimation animationWithKeyPath:@"transform.scale.x"];
    scaleAniX.fromValue = @0.3;
    scaleAniX.toValue = @1.3;
    scaleAniX.duration = 2;
    scaleAniX.repeatCount = MAXFLOAT;
    scaleAniX.autoreverses = YES;
    [scaleX.layer addAnimation:scaleAniX forKey:nil];
     // ----------------------------- Y比例缩放transform.scale.y -------------------------------------
    UIView *scaleY = [[UIView alloc] initWithFrame:CGRectMake(280, 410, 70, 70)];
    scaleY.backgroundColor = [UIColor redColor];
    [self.view addSubview:scaleY];
    CABasicAnimation *scaleAniY = [CABasicAnimation animationWithKeyPath:@"transform.scale.y"];
    scaleAniY.fromValue = @0.3;
    scaleAniY.toValue = @1.3;
    scaleAniY.duration = 2;
    scaleAniY.repeatCount = MAXFLOAT;
    scaleAniY.autoreverses = YES;
    [scaleY.layer addAnimation:scaleAniY forKey:nil];
     // ----------------------------- 指定大小bounds -------------------------------------
    UIView *boun = [[UIView alloc] initWithFrame:CGRectMake(40, 510, 20, 80)];
    boun.backgroundColor = [UIColor redColor];
    [self.view addSubview:boun];
    CABasicAnimation *bouncAni = [CABasicAnimation animationWithKeyPath:@"bounds"];
//    bouncAni.fromValue = @0.3;
    bouncAni.toValue = [NSValue valueWithCGRect:CGRectMake(800, 500, 90, 30)];
    bouncAni.duration = 2;
    bouncAni.repeatCount = MAXFLOAT;
    bouncAni.autoreverses = YES;
    [boun.layer addAnimation:bouncAni forKey:nil];
    
    // ----------------------------- 透明度opacity -------------------------------------
    UIView *opacityView = [[UIView alloc] initWithFrame:CGRectMake(150, 510, 70, 70)];
    opacityView.backgroundColor = [UIColor redColor];
    [self.view addSubview:opacityView];
    CABasicAnimation *opacityAni = [CABasicAnimation animationWithKeyPath:@"opacity"];
    opacityAni.fromValue = @0.1;
    opacityAni.toValue = @1;
    opacityAni.duration = 2;
    opacityAni.repeatCount = MAXFLOAT;
    opacityAni.autoreverses = YES;
    [opacityView.layer addAnimation:opacityAni forKey:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
