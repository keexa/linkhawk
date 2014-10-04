//
//  KXAboutController.h
//  Squirrel
//
//  Created by Marco Bonifazi on 04/09/2014.
//  Copyright (c) 2014 Keexa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KXAboutController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *versionText;
- (IBAction)okButtonPressed:(id)sender;

@end
