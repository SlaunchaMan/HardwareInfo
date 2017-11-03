//
//  iPodTouchDevice.swift
//  HardwareInfo
//
//  Created by Jeff Kelley on 11/3/17.
//  Copyright © 2017 Jeff Kelley. All rights reserved.
//

import Foundation

public enum iPodTouchDevice: String {
    @available(iOS, introduced: 1.1, deprecated: 3.2)
    case iPodTouch = "iPod touch"

    @available(iOS, introduced: 2.1, deprecated: 4.3)
    case iPodTouch2 = "iPod touch (2nd Generation)"

    @available(iOS, introduced: 3.1, deprecated: 6.0)
    case iPodTouch3 = "iPod touch (3rd Generation)"

    @available(iOS, introduced: 4.1, deprecated: 7.0)
    case iPodTouch4 = "iPod touch (4th Generation)"
    
    @available(iOS, introduced: 6.0, deprecated: 10.0)
    case iPodTouch5 = "iPod touch (5th Generation)"

    @available(iOS, introduced: 8.4)
    case iPodTouch6 = "iPod touch (6th Generation)"
    
    case unknown
    
    internal init(model: String) {
        switch model {
//        case "iPod1,1": self = .iPodTouch
//        case "iPod2,1": self = .iPodTouch2
//        case "iPod3,1": self = .iPodTouch3
//        case "iPod4,1": self = .iPodTouch4
//        case "iPod5,1": self = .iPodTouch5
        case "iPod7,1": self = .iPodTouch6
        default: self = .unknown
        }
    }
}
