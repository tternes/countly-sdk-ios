//
//  BTViewController.m
//  Countly Demo
//
//  Created by Thaddeus on 8/15/13.
//  Copyright (c) 2013 Bluetoo. All rights reserved.
//

#import "BTViewController.h"
#import "Countly.h"

@interface BTViewController ()
@property (nonatomic, assign) NSUInteger addRecordsCount;
@property (nonatomic, assign) NSUInteger updateRecordsCount;
@property (nonatomic, assign) NSUInteger removeRecordsCount;
@end

@implementation BTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[Countly sharedInstance] recordEvent:@"mainViewLoaded" count:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    [[Countly sharedInstance] recordEvent:@"didReceiveMemoryWarning" segmentation:@{@"view" : @"main"} count:0];
}

- (IBAction)buttonTapped:(id)sender
{
    switch([sender tag])
    {
        case 0:
            [[Countly sharedInstance] recordEvent:@"addRecords" count:++self.addRecordsCount];
            break;
            
        case 1:
            [[Countly sharedInstance] recordEvent:@"remoteRecords" count:++self.updateRecordsCount];
            break;
            
        case 2:
            [[Countly sharedInstance] recordEvent:@"removeRecords" count:++self.removeRecordsCount];
            break;
    }
}

@end
