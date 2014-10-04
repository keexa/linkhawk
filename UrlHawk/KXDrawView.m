//
//  KXDrawView.m
//  UrlHawk
//
//  Created by Marco Bonifazi on 30/09/2014.
//  Copyright (c) 2014 Keexa. All rights reserved.
//

#import "KXDrawView.h"

@implementation KXDrawView
CGFloat _red;
CGFloat _green;
CGFloat _blue;

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
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
    
    CGRect rBounds = self.bounds;
    
    
    // Fill background with 80% white
    CGContextSetFillColorWithColor(context, [[[UIColor whiteColor] colorWithAlphaComponent:0.3] CGColor]);
    CGContextFillRect(context, rBounds);
    
    // Draw the window 'frame'
    CGContextSetStrokeColorWithColor(context, [[UIColor orangeColor] CGColor]);
    CGContextSetLineWidth(context, 10);
    CGContextStrokeRect(context, rectangle);
    
    // make the window transparent
    CGContextSetBlendMode(context, kCGBlendModeClear);
    CGContextFillRect(context, rectangle);

}

@end
