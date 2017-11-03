//
//  Device.swift
//  HardwareInfo
//
//  Created by Jeff Kelley on 11/2/17.
//  Copyright © 2017 Jeff Kelley. All rights reserved.
//

import Foundation

public enum iPhoneDevice {
    @available(iOS, introduced: 1.0, deprecated: 3.2)
    case iPhone
    
    @available(iOS, introduced: 2.0, deprecated: 4.3)
    case iPhone3G
    
    @available(iOS, introduced: 3.0, deprecated: 7.0)
    case iPhone3GS
    
    @available(iOS, introduced: 4.0, deprecated: 8.0)
    case iPhone4
    
    @available(iOS, introduced: 5.0, deprecated: 10.0)
    case iPhone4S
    
    @available(iOS, introduced: 6.0, deprecated: 11.0)
    case iPhone5
    
    @available(iOS, introduced: 7.0, deprecated: 11.0)
    case iPhone5c
    
    @available(iOS, introduced: 7.0)
    case iPhone5s
    
    @available(iOS, introduced: 8.0)
    case iPhone6
    
    @available(iOS, introduced: 8.0)
    case iPhone6Plus
    
    @available(iOS, introduced: 9.0)
    case iPhone6s
    
    @available(iOS, introduced: 9.0)
    case iPhone6sPlus
    
    @available(iOS, introduced: 9.3)
    case iPhoneSE
    
    @available(iOS, introduced: 10.0)
    case iPhone7
    
    @available(iOS, introduced: 10.0)
    case iPhone7Plus
    
    @available(iOS, introduced: 11.0)
    case iPhone8
    
    @available(iOS, introduced: 11.0)
    case iPhone8Plus
    
    @available(iOS, introduced: 11.0)
    case iPhoneX
    
    case unknown
    
    internal init(model: String) {
        self = .unknown
        
        switch model {
//        case "iPhone1,1":
//            self = .iPhone
//
//        case "iPhone1,2":
//            self = .iPhone3G
//
//        case "iPhone2,1":
//            self = .iPhone3GS
//
//        case "iPhone3,1", "iPhone3,2", "iPhone3,3":
//            self = .iPhone4
            
        case "iPhone4,1", "iPhone4,2", "iPhone4,3":
            self = .iPhone4S
            
        case "iPhone5,1", "iPhone5,2":
            self = .iPhone5
            
        case "iPhone5,3", "iPhone5,4":
            self = .iPhone5c
            
        case "iPhone6,1", "iPhone6,2":
            self = .iPhone5s
            
        case "iPhone7,2":
            self = .iPhone6
            
        case "iPhone7,1":
            self = .iPhone6Plus
            
        case "iPhone8,1":
            if #available(iOS 9.0, *) {
                self = .iPhone6s
            }
            
        case "iPhone8,2":
            if #available(iOS 9.0, *) {
                self = .iPhone6sPlus
            }
            
        case "iPhone8,4":
            if #available(iOS 9.3, *) {
                self = .iPhoneSE
            }
            
        case "iPhone9,1", "iPhone9,3":
            if #available(iOS 10.0, *) {
                self = .iPhone7
            }
            
        case "iPhone9,2", "iPhone9,4":
            if #available(iOS 10.0, *) {
                self = .iPhone7Plus
            }
            
        case "iPhone10,1", "iPhone10,4":
            if #available(iOS 11.0, *) {
                self = .iPhone8
            }
            
        case "iPhone10,2", "iPhone10,5":
            if #available(iOS 11.0, *) {
                self = .iPhone8Plus
            }
        
        case "iPhone10,3", "iPhone10,6":
            if #available(iOS 11.0, *) {
                self = .iPhoneX
            }
        
        default: break
        }
    }
    
    public var marketingName: String? {
        switch self {
        case .iPhoneX: return "iPhone X"
        case .iPhone8: return "iPhone 8"
        case .iPhone8Plus: return "iPhone 8 Plus"
        case .iPhone7: return "iPhone 7"
        case .iPhone7Plus: return "iPhone 7 Plus"
        case .iPhoneSE: return "iPhone SE"
        case .iPhone6s: return "iPhone 6s"
        case .iPhone6sPlus: return "iPhone 6s Plus"
        case .iPhone6: return "iPhone 6"
        case .iPhone6Plus: return "iPhone 6 Plus"
        case .iPhone5s: return "iPhone 5s"
        case .iPhone5c: return "iPhone 5c"
        case .iPhone5: return "iPhone 5"
        case .iPhone4S: return "iPhone 4S"
        case .iPhone4: return "iPhone 4"
        case .iPhone3GS: return "iPhone 3GS"
        case .iPhone3G: return "iPhone 3G"
        case .iPhone: return "iPhone"
            
        default: return nil
        }
    }
}
