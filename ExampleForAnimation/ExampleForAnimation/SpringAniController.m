//
//  SpringAniController.m
//  ExampleForAnimation
//
//  Created by xpchina2003 on 2017/10/24.
//  Copyright © 2017年 xpchina2003. All rights reserved.
//

#import "SpringAniController.h"

@interface SpringAniController ()

@end

@implementation SpringAniController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 200, 50, 30)];
    label.backgroundColor = [UIColor redColor];
    [self.view addSubview:label];
    
    CASpringAnimation *spring = [CASpringAnimation animationWithKeyPath:@"position.x"];
    spring.damping = 5;
    spring.stiffness = 100;
    spring.mass = 1;
    spring.initialVelocity = 0;
    spring.fromValue = @(label.layer.bounds.origin.x);
    spring.toValue = @(label.layer.bounds.origin.x+100);
    spring.autoreverses = YES;
    spring.repeatCount = MAXFLOAT;
    spring.duration = spring.settlingDuration;
    [label.layer addAnimation:spring forKey:nil];
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
