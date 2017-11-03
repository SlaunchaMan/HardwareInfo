//
//  tvOSDeviceIdentification.swift
//  HardwareInfo-tvOS
//
//  Created by Jeff Kelley on 11/3/17.
//  Copyright © 2017 Jeff Kelley. All rights reserved.
//

import UIKit

internal func parseDeviceIdentity(from modelString: String) -> AppleTVDevice {
    if modelString == "i386" || modelString == "x86_64" {
        return .simulator
    }
    
    return AppleTVDevice(model: modelString)
}

extension UIDevice {
    public var deviceIdentity: AppleTVDevice {
        guard let modelName = modelName() else { return .unknown }
        
        return parseDeviceIdentity(from: modelName)
    }
}
