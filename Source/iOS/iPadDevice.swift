//
//  iPadDevice.swift
//  HardwareInfo
//
//  Created by Jeff Kelley on 11/3/17.
//  Copyright © 2017 Jeff Kelley. All rights reserved.
//

import Foundation

public enum iPadDevice {
    @available (iOS, introduced: 3.2, deprecated: 6.0)
    case iPad
    
    @available (iOS, introduced: 4.3, deprecated: 10.0)
    case iPad2
    
    @available (iOS, introduced: 5.1, deprecated: 10.0)
    case iPad3
    
    @available (iOS, introduced: 6.0, deprecated: 11.0)
    case iPad4
    
    @available (iOS, introduced: 6.0, deprecated: 10.0)
    case iPadMini
    
    @available (iOS, introduced: 7.0)
    case iPadAir
    
    @available (iOS, introduced: 7.0)
    case iPadMini2
    
    @available (iOS, introduced: 8.0)
    case iPadMini3
    
    @available (iOS, introduced: 8.1)
    case iPadAir2
    
    @available (iOS, introduced: 9.0)
    case iPadMini4
    
    @available (iOS, introduced: 9.1)
    case iPadPro12_9Inch
    
    @available (iOS, introduced: 9.3)
    case iPadPro9_7Inch

    @available (iOS, introduced: 10.3)
    case iPad5
    
    @available (iOS, introduced: 10.3)
    case iPadPro12_9Inch2
    
    @available (iOS, introduced: 10.3)
    case iPadPro10_5Inch
    
    case unknown
    
    internal init(model: String) {
        switch model {
//        case "iPad1,1": self = .iPad
//        case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4": self = .iPad2
//        case "iPad2,5", "iPad2,6", "iPad2,7": self = .iPadMini
//        case "iPad3,1", "iPad3,2", "iPad3,3": self = .iPad3
//        case "iPad3,4", "iPad3,5", "iPad3,6": self = .iPad4
        case "iPad4,1", "iPad4,2", "iPad4,3": self = .iPadAir
        case "iPad4,4", "iPad4,5", "iPad4,6": self = .iPadMini2
        case "iPad4,7", "iPad4,8", "iPad4,9": self = .iPadMini3
        case "iPad5,1", "iPad5,2": self = .iPadMini4
        case "iPad5,3", "iPad5,4": self = .iPadAir2
        case "iPad6,3", "iPad6,4": self = .iPadPro9_7Inch
        case "iPad6,7", "iPad6,8": self = .iPadPro12_9Inch
        case "iPad6,11", "iPad6,12": self = .iPad5
        case "iPad7,1", "iPad7,2": self = .iPadPro12_9Inch2
        case "iPad7,3", "iPad7,4": self = .iPadPro10_5Inch
        default: self = .unknown
        }
    }
    
    public var marketingName: String? {
        switch self {
        case .iPadPro10_5Inch: return "iPad Pro (10.5-inch)"
        case .iPadPro12_9Inch2: return "iPad Pro (12.9-inch, 2nd Generation)"
        case .iPad5: return "iPad (5th Generation)"
        case .iPadPro9_7Inch: return "iPad Pro (9.7-inch)"
        case .iPadPro12_9Inch: return "iPad Pro (12.9-inch)"
        case .iPadMini4: return "iPad mini 4"
        case .iPadAir2: return "iPad Air 2"
        case .iPadMini3: return "iPad mini 3"
        case .iPadMini2: return "iPad mini 2"
        case .iPadAir: return "iPad Air"
        case .iPad4: return "iPad (4th Generation)"
        case .iPad3: return "iPad (3rd Generation)"
        case .iPad2: return "iPad 2"
        case .iPad: return "iPad"
            
        default: return nil
        }
    }
}
