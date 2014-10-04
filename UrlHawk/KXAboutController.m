//
//  KXAboutController.m
//  Squirrel
//
//  Created by Marco Bonifazi on 04/09/2014.
//  Copyright (c) 2014 Keexa. All rights reserved.
//

#import "KXAboutController.h"

@interface KXAboutController ()

@end

@implementation KXAboutController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (NSString *)appNameAndVersionNumberDisplayString {
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    //NSString *appDisplayName = [infoDictionary objectForKey:@"CFBundleDisplayName"];
    //NSString *majorVersion = [infoDictionary objectForKey:@"CFBundleShortVersionString"];
    NSString *minorVersion = [infoDictionary objectForKey:@"CFBundleShortVersionString"];
    
    return [NSString stringWithFormat:@"Squirrel v%@",
            minorVersion];
}

-(void)viewWillAppear:(BOOL)animated {
    NSLog(@"%s - START", __PRETTY_FUNCTION__);
    [super viewWillAppear:animated];
    NSString* appName = [self appNameAndVersionNumberDisplayString];
    [self.versionText setText:appName];
    NSLog(@"%s - STOP", __PRETTY_FUNCTION__);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)okButtonPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
