//
//  KXViewController.h
//  UrlHawk
//
//  Created by Marco Bonifazi on 08/09/2014.
//  Copyright (c) 2014 Keexa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KXRectView.h"
#import "KXDrawView.h"
#import <TesseractOCR/TesseractOCR.h>
#import "AVCamPreviewView.h"
#import <AVFoundation/AVFoundation.h>
#import <QuartzCore/QuartzCore.h>
#import <CoreMedia/CoreMedia.h>
#import <Accelerate/Accelerate.h>

@interface KXViewController : UIViewController <TesseractDelegate, AVCaptureVideoDataOutputSampleBufferDelegate, UIActionSheetDelegate>

@property (nonatomic, weak) IBOutlet KXRectView *drawRect;
@property (nonatomic, weak) IBOutlet AVCamPreviewView *previewView;
@property (nonatomic, weak) IBOutlet UIButton *recordButton;
@property (nonatomic, weak) IBOutlet UIButton *cameraButton;
@property (nonatomic, weak) IBOutlet UIButton *stillButton;

@property (weak, nonatomic) IBOutlet KXDrawView *drawView;

@end
