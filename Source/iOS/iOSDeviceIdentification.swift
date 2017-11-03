//
//  iOSDeviceIdentification.swift
//  HardwareInfo
//
//  Created by Jeff Kelley on 11/3/17.
//  Copyright © 2017 Jeff Kelley. All rights reserved.
//

import UIKit

public enum DeviceIdentity: Equatable {
    case iPhone(iPhoneDevice)
    case iPad(iPadDevice)
    case iPodTouch(iPodTouchDevice)
    case simulator
    case unknown

    public static func ==(lhs: DeviceIdentity, rhs: DeviceIdentity) -> Bool {
        switch (lhs, rhs) {
        case let (.iPhone(a), .iPhone(b)):
            return a == b
            
        case let (.iPad(a), .iPad(b)):
            return a == b
            
        case let (.iPodTouch(a), .iPodTouch(b)):
            return a == b
            
        case (.unknown, .unknown):
            return true
            
        case (.simulator, .simulator):
            return true
            
        default:
            return false
        }
    }
}

internal func parseDeviceIdentity(from modelString: String) -> DeviceIdentity {
    if modelString.hasPrefix("iPhone") {
        return .iPhone(iPhoneDevice(model: modelString))
    }
    else if modelString.hasPrefix("iPad") {
        return .iPad(iPadDevice(model: modelString))
    }
    else if modelString.hasPrefix("iPod") {
        return .iPodTouch(iPodTouchDevice(model: modelString))
    }
    else if modelString == "i386" || modelString == "x86_64" {
        return .simulator
    }
    
    return .unknown
}

extension UIDevice {
    public var deviceIdentity: DeviceIdentity {
        guard let modelName = modelName() else { return .unknown }
        
        return parseDeviceIdentity(from: modelName)
    }
}
