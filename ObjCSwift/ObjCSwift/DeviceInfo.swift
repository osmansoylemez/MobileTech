//
//  DeviceInfo.swift
//  ObjCSwift
//
//  Created by Osman SÖYLEMEZ on 01/03/2018.
//  Copyright © 2018 Osman SÖYLEMEZ. All rights reserved.
//

import UIKit

class DeviceInfo: NSObject {

    static func deviceName() -> String {
        return UIDevice.current.name
    }
}
