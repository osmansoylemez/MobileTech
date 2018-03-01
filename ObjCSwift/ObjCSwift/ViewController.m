//
//  ViewController.m
//  ObjCSwift
//
//  Created by Osman SÖYLEMEZ on 01/03/2018.
//  Copyright © 2018 Osman SÖYLEMEZ. All rights reserved.
//

#import "ViewController.h"
#import "ObjCSwift-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)showAlertWithMessage:(NSString *)message
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Uyarı"
                                                                             message:message
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:NSLocalizedString(@"Tamam", nil)
                                                 style:UIAlertActionStyleDefault
                                               handler:nil];
    [alertController addAction:ok];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

#pragma mark Action

- (IBAction)deviceNameButtonTouchUpInside:(id)sender
{
    [self showAlertWithMessage:[DeviceInfo deviceName]];
}

@end
