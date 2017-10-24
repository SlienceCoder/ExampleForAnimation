//
//  KeyframeAniController.m
//  ExampleForAnimation
//
//  Created by xpchina2003 on 2017/10/24.
//  Copyright © 2017年 xpchina2003. All rights reserved.
//

#import "KeyframeAniController.h"

@interface KeyframeAniController ()

@end

@implementation KeyframeAniController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIView *tempView = [[UIView alloc] initWithFrame:CGRectMake(50, 100, 250, 500)];
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithOvalInRect:tempView.frame];
    
    UIView *animaView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 70, 70)];
    animaView.backgroundColor = [UIColor redColor];
    [self.view addSubview:animaView];
    
    CAKeyframeAnimation *orbitAni = [CAKeyframeAnimation animationWithKeyPath:@"position"];;
    orbitAni.duration = 5;
    orbitAni.path = bezierPath.CGPath;
    orbitAni.calculationMode = kCAAnimationPaced;
    orbitAni.fillMode = kCAFillModeBackwards;
    orbitAni.repeatCount = MAXFLOAT;
    orbitAni.rotationMode = kCAAnimationRotateAutoReverse;
    [animaView.layer addAnimation:orbitAni forKey:nil];
    
    CAShapeLayer *shapeLayer = [[CAShapeLayer alloc] init];
    shapeLayer.strokeColor = [UIColor purpleColor].CGColor;
    shapeLayer.fillColor = [UIColor clearColor].CGColor;
    shapeLayer.lineWidth = 0.5;
    shapeLayer.lineJoin = kCALineJoinRound;
    shapeLayer.lineCap = kCALineCapRound;
    shapeLayer.path = bezierPath.CGPath;
    [self.view.layer addSublayer:shapeLayer];
    
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
