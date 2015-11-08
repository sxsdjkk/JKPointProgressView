//
//  JKProgressView.h
//  MaskedProgressViewDemo
//
//  Created by KeKe on 15/11/7.
//  Copyright © 2015年 JK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface JKPointProgressView :UIView

@property (nonatomic, assign) NSInteger numberOfPoint;//总点数

@property (nonatomic, assign) CGFloat RadiusOfPoint;//圆点的半径

@property (nonatomic, strong) UIColor *progressedColor;//progress tint 进度颜色

@property (nonatomic, strong) UIColor *unProgressedColor;//track tint 默认颜色

@property (nonatomic, assign) NSInteger progressedNumberOfPoint;//进度点数

- (instancetype)initWithPointNumber:(NSInteger)number;

- (void)setProgressedNumberOfPoint:(NSInteger)numberOfpoint;

@end
