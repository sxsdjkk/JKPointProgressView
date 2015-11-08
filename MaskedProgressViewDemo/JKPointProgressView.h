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

@property (nonatomic, assign) NSInteger numberOfPoint;

@property (nonatomic, assign) CGFloat RadiusOfPoint;

@property (nonatomic, strong) UIColor *progressedColor;

@property (nonatomic, strong) UIColor *unProgressedColor;

@property (nonatomic, assign) NSInteger progressedNumberOfPoint;

- (instancetype)initWithPointNumber:(NSInteger)number;

- (void)setProgressedNumberOfPoint:(NSInteger)numberOfpoint;

@end
