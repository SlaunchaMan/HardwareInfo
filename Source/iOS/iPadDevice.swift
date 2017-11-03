//
//  iPadDevice.swift
//  HardwareInfo
//
//  Created by Jeff Kelley on 11/3/17.
//  Copyright © 2017 Jeff Kelley. All rights reserved.
//

import Foundation

public enum iPadDevice: String {
    @available (iOS, introduced: 3.2, deprecated: 6.0)
    case iPad = "iPad"
    
    @available (iOS, introduced: 4.3, deprecated: 10.0)
    case iPad2 = "iPad 2"
    
    @available (iOS, introduced: 5.1, deprecated: 10.0)
    case iPad3 = "iPad (3rd Generation)"
    
    @available (iOS, introduced: 6.0, deprecated: 11.0)
    case iPad4 = "iPad (4th Generation)"
    
    @available (iOS, introduced: 6.0, deprecated: 10.0)
    case iPadMini = "iPad mini"
    
    @available (iOS, introduced: 7.0)
    case iPadAir = "iPad Air"
    
    @available (iOS, introduced: 7.0)
    case iPadMini2 = "iPad mini 2"
    
    @available (iOS, introduced: 8.0)
    case iPadMini3 = "iPad mini 3"
    
    @available (iOS, introduced: 8.1)
    case iPadAir2 = "iPad Air 2"
    
    @available (iOS, introduced: 9.0)
    case iPadMini4 = "iPad mini 4"
    
    @available (iOS, introduced: 9.1)
    case iPadPro12_9Inch = "iPad Pro (12.9-inch)"
    
    @available (iOS, introduced: 9.3)
    case iPadPro9_7Inch = "iPad Pro (9.7-inch)"

    @available (iOS, introduced: 10.3)
    case iPad5 = "iPad (5th Generation)"
    
    @available (iOS, introduced: 10.3)
    case iPadPro12_9Inch2 = "iPad Pro (12.9-inch, 2nd Generation)"
    
    @available (iOS, introduced: 10.3)
    case iPadPro10_5Inch = "iPad Pro (10.5-inch)"
    
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
}
