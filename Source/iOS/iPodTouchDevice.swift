//
//  iPodTouchDevice.swift
//  HardwareInfo
//
//  Created by Jeff Kelley on 11/3/17.
//  Copyright © 2017 Jeff Kelley. All rights reserved.
//

import Foundation

public enum iPodTouchDevice {
    @available(iOS, introduced: 1.1, deprecated: 3.2)
    case iPodTouch

    @available(iOS, introduced: 2.1, deprecated: 4.3)
    case iPodTouch2

    @available(iOS, introduced: 3.1, deprecated: 6.0)
    case iPodTouch3

    @available(iOS, introduced: 4.1, deprecated: 7.0)
    case iPodTouch4
    
    @available(iOS, introduced: 6.0, deprecated: 10.0)
    case iPodTouch5

    @available(iOS, introduced: 8.4)
    case iPodTouch6
    
    case unknown
    
    internal init(model: String) {
        self = .unknown
        
        switch model {
//        case "iPod1,1":
//            self = .iPodTouch
//
//        case "iPod2,1":
//            self = .iPodTouch2
//
//        case "iPod3,1":
//            self = .iPodTouch3
//
//        case "iPod4,1":
//            self = .iPodTouch4
        
        case "iPod5,1":
            self = .iPodTouch5
            
        case "iPod7,1":
            if #available(iOSApplicationExtension 8.4, *) {
                self = .iPodTouch6
            }
            
        default: break
        }
    }
    
    public var marketingName: String? {
        switch self {
        case .iPodTouch6: return "iPod touch (6th Generation)"
        case .iPodTouch5: return "iPod touch (5th generation)"
        case .iPodTouch4: return "iPod touch (4th generation)"
        case .iPodTouch3: return "iPod touch (3rd generation)"
        case .iPodTouch2: return "iPod touch (2nd generation)"
        case .iPodTouch: return "iPod touch"
            
        default: return nil
        }
    }
}
