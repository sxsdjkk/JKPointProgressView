//
//  JKProgressView.m
//  MaskedProgressViewDemo
//
//  Created by KeKe on 15/11/7.
//  Copyright © 2015年 JK. All rights reserved.
//

#import "JKPointProgressView.h"

@interface JKPointProgressView ()
{
    UIView *_unProgressedView;
    
    UIView *_progressedView;
}


@end

@implementation JKPointProgressView


#pragma mark- init
- (instancetype)initWithPointNumber:(NSInteger)number {
    
    self = [super init];
    
    if (self) {
        
        _numberOfPoint = number;
      
        self.backgroundColor = [UIColor clearColor];
      
    }
    return self;
}

#pragma mark-
- (void)drawRect:(CGRect)rect {
    
    [super drawRect:rect];
    
    if (!_numberOfPoint) {
        
        _numberOfPoint = 10;
    }
    if (!_RadiusOfPoint) {
        
        _RadiusOfPoint = 5;
    }
    if (!_progressedColor) {
        
        _progressedColor = [UIColor redColor];
    }
    if (!_unProgressedColor) {
        
        _unProgressedColor = [UIColor grayColor];
    }
    
    _unProgressedView = [[UIView alloc] initWithFrame:rect];
    
    _unProgressedView.backgroundColor = _unProgressedColor;
    
    [self addSubview:_unProgressedView];
    
    _progressedView = [[UIView alloc] init];
                       
    [self setProgressedNumberOfPoint:_progressedNumberOfPoint];
    
    _progressedView.backgroundColor = _progressedColor;
    
    [_unProgressedView addSubview:_progressedView];
    
    [self drawCirclesWithRect:rect];
}

- (void)drawCirclesWithRect:(CGRect)rect
{
    CGSize size = self.frame.size;
    
    CGFloat width = size.width;
    
    CGFloat interval = (width-_RadiusOfPoint*2)/(_numberOfPoint-1);
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
  
    [shapeLayer setFillColor:[[UIColor blueColor] CGColor]];
  
    CGMutablePathRef path = CGPathCreateMutable();
    
    for (int i = 0; i< _numberOfPoint; i++) {
        
        CGPathMoveToPoint(path, NULL, i*interval+_RadiusOfPoint, size.height/2);
//        CGPathAddArc(path, NULL, (i*interval+_RadiusOfPoint), size.height/2, (_RadiusOfPoint), -M_PI*2, 0.0, YES);
      CGPathAddArc(path, NULL, (i*interval+_RadiusOfPoint), size.height/2.0, (float)_RadiusOfPoint, M_PI*2, 0, YES);
        CGPathCloseSubpath(path);
    }
    
    [shapeLayer setPath:path];
    CFRelease(path);
    _unProgressedView.layer.mask = shapeLayer;
}

#pragma mark- overwrite setter
- (void)setProgressedNumberOfPoint:(NSInteger)point;
{
    _progressedNumberOfPoint = point;
    _progressedView.frame = CGRectMake(0, 0, (self.frame.size.width-_RadiusOfPoint*2)/(_numberOfPoint-1)*point, self.frame.size.height);
}

- (void)setUnProgressedColor:(UIColor *)unProgressedColor {
    
    _unProgressedColor = unProgressedColor;
    
    if (_unProgressedView) {
        
        _unProgressedView.backgroundColor = _unProgressedColor;
    }
}

- (void)setProgressedColor:(UIColor *)progressedColor {
    
    _progressedColor = progressedColor;
    
    if (_progressedView) {
        
        _progressedView.backgroundColor = _progressedColor;
    }
}

@end
