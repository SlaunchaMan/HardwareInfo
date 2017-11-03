//
//  AppleWatchDevice.swift
//  HardwareInfo-watchOS
//
//  Created by Jeff Kelley on 11/3/17.
//  Copyright © 2017 Jeff Kelley. All rights reserved.
//

import Foundation

public enum AppleWatchDevice: String {
    @available(watchOS, introduced: 1.0)
    case AppleWatch = "Apple Watch"
    
    @available(watchOS, introduced: 3.0)
    case AppleWatchSeries1 = "Apple Watch Series 1"
    
    @available(watchOS, introduced: 3.0)
    case AppleWatchSeries2 = "Apple Watch Series 2"
    
    @available(watchOS, introduced: 4.0)
    case AppleWatchSeries3 = "Apple Watch Series 3"
    
    case simulator
    case unknown
    
    internal init(model: String) {
        switch model {
        case "Watch1,1", "Watch1,2": self = .AppleWatch
        case "Watch2,6", "Watch2,7": self = .AppleWatchSeries1
        case "Watch2,3", "Watch2,4": self = .AppleWatchSeries2
        case "Watch3,1", "Watch3,2", "Watch3,3", "Watch3,4": self = .AppleWatchSeries3
        case "i386", "x86_64": self = .simulator
        default: self = .unknown
        }
    }
}
