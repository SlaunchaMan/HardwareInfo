//
//  AppleWatchDevice.swift
//  HardwareInfo-watchOS
//
//  Created by Jeff Kelley on 11/3/17.
//  Copyright © 2017 Jeff Kelley. All rights reserved.
//

import Foundation

public enum AppleWatchDevice {
    @available(watchOS, introduced: 1.0)
    case AppleWatch
    
    @available(watchOS, introduced: 3.0)
    case AppleWatchSeries1
    
    @available(watchOS, introduced: 3.0)
    case AppleWatchSeries2
    
    @available(watchOS, introduced: 4.0)
    case AppleWatchSeries3
    
    case simulator
    case unknown
    
    internal init(model: String) {
        self = .unknown
        
        switch model {
        case "Watch1,1", "Watch1,2":
            self = .AppleWatch
            
        case "Watch2,6", "Watch2,7":
            if #available(watchOS 3.0, *) {
                self = .AppleWatchSeries1
            }
            
        case "Watch2,3", "Watch2,4":
            if #available(watchOS 3.0, *) {
                self = .AppleWatchSeries2
            }
            
        case "Watch3,1", "Watch3,2", "Watch3,3", "Watch3,4":
            if #available(watchOS 4.0, *) {
                self = .AppleWatchSeries3
            }

        default: break
        }
    }
    
    public var marketingName: String? {
        switch self {
        case .AppleWatchSeries3: return "Apple Watch Series 3"
        case .AppleWatchSeries2: return "Apple Watch Series 2"
        case .AppleWatchSeries1: return "Apple Watch Series 1"
        case .AppleWatch: return "Apple Watch"
            
        default: return nil
        }
    }
}
