//
//  watchOSDeviceIdentification.swift
//  HardwareInfo-watchOS
//
//  Created by Jeff Kelley on 11/3/17.
//  Copyright © 2017 Jeff Kelley. All rights reserved.
//

import WatchKit

internal func parseDeviceIdentity(from modelString: String) -> AppleWatchDevice {
    return AppleWatchDevice(model: modelString)
}

extension WKInterfaceDevice {
    public var deviceIdentity: AppleWatchDevice {
        guard let modelName = modelName() else { return .unknown }
        
        return parseDeviceIdentity(from: modelName)
    }
}
