//
//  KXRectView.m
//  Squirrel
//
//  Created by Marco Bonifazi on 04/09/2014.
//  Copyright (c) 2014 Keexa. All rights reserved.
//

#import "KXRectView.h"

@implementation KXRectView
CGFloat _red;
CGFloat _green;
CGFloat _blue;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}

- (void)setColorRectangleRed:(CGFloat)red
                       Green:(CGFloat)green
                        Blue:(CGFloat)blue {
    _red = red;
    _green = green;
    _blue = blue;
}

-(void) drawRect:(CGRect)rect{
    [super drawRect:rect];
    CGRect rectangle = CGRectMake(self.rect.origin.x, self.rect.origin.y, self.rect.size.width, self.rect.size.height);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 10.0);

    CGContextSetRGBStrokeColor(context, _red, _green, _blue, 1.0);
    CGContextStrokeRect(context, rectangle);
}

@end
