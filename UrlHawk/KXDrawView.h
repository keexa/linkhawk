//
//  KXDrawView.h
//  UrlHawk
//
//  Created by Marco Bonifazi on 30/09/2014.
//  Copyright (c) 2014 Keexa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KXDrawView : UIView
- (void)setColorRectangleRed:(CGFloat)red
                       Green:(CGFloat)green
                        Blue:(CGFloat)blue;

@property ( nonatomic) CGRect rect;


@end
