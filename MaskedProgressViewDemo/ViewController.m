//
//  ViewController.m
//  MaskedProgressViewDemo
//
//  Created by KeKe on 15/11/6.
//  Copyright © 2015年 JK. All rights reserved.
//

#import "ViewController.h"
#import "JKPointProgressView.h"

#define SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width

@interface ViewController ()
{
    JKPointProgressView *_progressView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
    
    _progressView = [[JKPointProgressView alloc] initWithPointNumber:14];
    _progressView.frame = CGRectMake(40, 100, SCREEN_WIDTH-80, 20);
    
    [_progressView setProgressedNumberOfPoint:0];
        
    [self.view addSubview:_progressView];
}

- (IBAction)sliderChanged:(id)sender {
    
    UISlider *slider = (UISlider *)sender;
    
    [_progressView setProgressedNumberOfPoint:slider.value*14];
  
    NSLog(@"--%d",(int)(slider.value*14));
}



- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
