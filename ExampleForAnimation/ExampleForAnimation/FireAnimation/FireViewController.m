//
//  FireViewController.m
//  ExampleForAnimation
//
//  Created by xpchina2003 on 2017/10/23.
//  Copyright © 2017年 xpchina2003. All rights reserved.
//

#import "FireViewController.h"

@interface FireViewController ()
@property (nonatomic, strong) CAEmitterLayer *fireEmitter;
@property (nonatomic, strong) UIImageView *candleIV;
@end

@implementation FireViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blackColor];
    
   
    self.fireEmitter = [[CAEmitterLayer alloc] init];
    self.fireEmitter.emitterPosition = self.view.center;
    
    // 发射器的形状
    self.fireEmitter.emitterShape = kCAEmitterLayerCircle;
    
        self.fireEmitter.renderMode = kCAEmitterLayerAdditive;
    
    // 发射单元
    CAEmitterCell *fire = [[CAEmitterCell alloc] init];
    fire.birthRate = 200;
    fire.lifetime = 0.2;
    fire.lifetimeRange = 0.5;
    fire.color =[UIColor colorWithRed:0.8 green:0.4 blue:0.2 alpha:1.0].CGColor;
    fire.contents = CFBridgingRelease([UIImage imageNamed:@"fire.png"].CGImage);
    fire.name = @"fire";
    fire.velocity = 35;
    fire.velocityRange = 10;
    fire.emissionLongitude = M_PI+M_PI_2;
    fire.emissionRange = M_PI_2;
    fire.scaleSpeed = 0.3;
    
    self.fireEmitter.emitterCells = @[fire];
    [self.view.layer addSublayer:self.fireEmitter];
    
    
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
