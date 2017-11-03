//
//  Device.swift
//  HardwareInfo
//
//  Created by Jeff Kelley on 11/2/17.
//  Copyright © 2017 Jeff Kelley. All rights reserved.
//

import Foundation

public enum iPhoneDevice: String {
    @available(iOS, introduced: 1.0, deprecated: 3.2)
    case iPhone = "iPhone"
    
    @available(iOS, introduced: 2.0, deprecated: 4.3)
    case iPhone3G = "iPhone 3G"
    
    @available(iOS, introduced: 3.0, deprecated: 7.0)
    case iPhone3GS = "iPhone 3GS"
    
    @available(iOS, introduced: 4.0, deprecated: 8.0)
    case iPhone4 = "iPhone 4"
    
    @available(iOS, introduced: 5.0, deprecated: 10.0)
    case iPhone4S = "iPhone 4S"
    
    @available(iOS, introduced: 6.0, deprecated: 11.0)
    case iPhone5 = "iPhone 5"
    
    @available(iOS, introduced: 7.0, deprecated: 11.0)
    case iPhone5c = "iPhone 5c"
    
    @available(iOS, introduced: 7.0)
    case iPhone5s = "iPhone 5s"
    
    @available(iOS, introduced: 8.0)
    case iPhone6 = "iPhone 6"
    
    @available(iOS, introduced: 8.0)
    case iPhone6Plus = "iPhone 6 Plus"
    
    @available(iOS, introduced: 9.0)
    case iPhone6s = "iPhone 6s"
    
    @available(iOS, introduced: 9.0)
    case iPhone6sPlus = "iPhone 6s Plus"
    
    @available(iOS, introduced: 9.3)
    case iPhoneSE = "iPhone SE"
    
    @available(iOS, introduced: 10.0)
    case iPhone7 = "iPhone 7"
    
    @available(iOS, introduced: 10.0)
    case iPhone7Plus = "iPhone 7 Plus"
    
    @available(iOS, introduced: 11.0)
    case iPhone8 = "iPhone 8"
    
    @available(iOS, introduced: 11.0)
    case iPhone8Plus = "iPhone 8 Plus"
    
    @available(iOS, introduced: 11.1)
    case iPhoneX = "iPhone X"
    
    case unknown
    
    internal init(model: String) {
        switch model {
//        case "iPhone1,1": self = .iPhone
//        case "iPhone1,2": self = .iPhone3G
//        case "iPhone2,1": self = .iPhone3GS
//        case "iPhone3,1", "iPhone3,2", "iPhone3,3": self = .iPhone4
//        case "iPhone4,1", "iPhone4,2", "iPhone4,3": self = .iPhone4S
//        case "iPhone5,1", "iPhone5,2": self = .iPhone5
//        case "iPhone5,3", "iPhone5,4": self = .iPhone5c
        case "iPhone6,1", "iPhone6,2": self = .iPhone5s
        case "iPhone7,2": self = .iPhone6
        case "iPhone7,1": self = .iPhone6Plus
        case "iPhone8,1": self = .iPhone6s
        case "iPhone8,2": self = .iPhone6sPlus
        case "iPhone8,4": self = .iPhoneSE
        case "iPhone9,1": self = .iPhone7
        case "iPhone9,3": self = .iPhone7
        case "iPhone9,2": self = .iPhone7Plus
        case "iPhone9,4": self = .iPhone7Plus
        case "iPhone10,1": self = .iPhone8
        case "iPhone10,4": self = .iPhone8
        case "iPhone10,2": self = .iPhone8Plus
        case "iPhone10,5": self = .iPhone8Plus
        case "iPhone10,3": self = .iPhoneX
        case "iPhone10,6": self = .iPhoneX
        default: self = .unknown
        }
    }
}
