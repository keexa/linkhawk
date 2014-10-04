//
//  KXWebViewController.h
//  
//
//  Created by Marco Bonifazi on 02/10/2014.
//
//

#import <UIKit/UIKit.h>

@interface KXWebViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) NSString *urlString;

@end
