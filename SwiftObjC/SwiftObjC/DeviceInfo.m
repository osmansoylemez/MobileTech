//
//  DeviceInfo.m
//  SwiftObjC
//
//  Created by Osman SÖYLEMEZ on 01/03/2018.
//  Copyright © 2018 Osman SÖYLEMEZ. All rights reserved.
//

#import "DeviceInfo.h"
#import <UIKit/UIKit.h>

@implementation DeviceInfo

+ (NSString *)deviceName
{
    return [[UIDevice currentDevice] name];
}

@end
