//
//  ArcView.m
//  LiveRenderingDemo
//
//  Created by c0ming on 14-7-3.
//  Copyright (c) 2014年 c0ming. All rights reserved.
//

#import "ArcView.h"

@interface ArcView () {
    IBInspectable CGFloat startAngle;
    IBInspectable CGFloat endAngle;
    IBInspectable CGFloat radius;
    IBInspectable CGFloat lineWidth;
    IBInspectable UIColor *lineColor;
}

@end

@implementation ArcView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(ctx, lineWidth);
    [lineColor setStroke];
    
    CGContextAddArc(ctx, CGRectGetMidX(self.bounds), CGRectGetMidY(self.bounds), radius, M_PI/180.0*startAngle, M_PI/180.0*endAngle, 0);
    CGContextStrokePath(ctx);
}

@end
