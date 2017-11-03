//
//  AppleTVDevice.swift
//  HardwareInfo-tvOS
//
//  Created by Jeff Kelley on 11/3/17.
//  Copyright © 2017 Jeff Kelley. All rights reserved.
//

import Foundation

public enum AppleTVDevice {
    @available(tvOS, introduced: 9.0)
    case AppleTV
    
    @available(tvOS, introduced: 11.0)
    case AppleTV4K
    
    case simulator
    case unknown
    
    internal init(model: String) {
        self = .unknown
        
        switch model {
        case "AppleTV5,3": self = .AppleTV
            
        case "AppleTV6,2":
            if #available(tvOSApplicationExtension 11.0, *) {
                self = .AppleTV4K
            }
            
        default: break
        }
    }
    
    public var marketingName: String? {
        switch self {
        case .AppleTV4K: return "Apple TV 4K"
        case .AppleTV: return "Apple TV"
            
        default: return nil
        }
    }
}
