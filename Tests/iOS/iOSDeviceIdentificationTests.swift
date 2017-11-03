//
//  iOSDeviceIdentificationTests.swift
//  HardwareInfoTests-iOS
//
//  Created by Jeff Kelley on 11/3/17.
//  Copyright © 2017 Jeff Kelley. All rights reserved.
//

import XCTest
@testable import HardwareInfo

func assertDeviceIdentity(model: String, expected identity: DeviceIdentity) {
    XCTAssertEqual(parseDeviceIdentity(from: model), identity)
}

class iPhoneIdentificationTests: XCTestCase {
    
    func testThatItParsesTheiPhoneX() {
        if #available(iOS 11.0, *) {
            assertDeviceIdentity(model: "iPhone10,3", expected: .iPhone(.iPhoneX))
            assertDeviceIdentity(model: "iPhone10,6", expected: .iPhone(.iPhoneX))
        }
    }
    
    func testThatItParsesTheiPhone8() {
        if #available(iOS 11.0, *) {
            assertDeviceIdentity(model: "iPhone10,1", expected: .iPhone(.iPhone8))
            assertDeviceIdentity(model: "iPhone10,4", expected: .iPhone(.iPhone8))
            assertDeviceIdentity(model: "iPhone10,2", expected: .iPhone(.iPhone8Plus))
            assertDeviceIdentity(model: "iPhone10,5", expected: .iPhone(.iPhone8Plus))
        }
    }
    
    func testThatItParsesTheiPhone7() {
        if #available(iOS 10.0, *) {
            assertDeviceIdentity(model: "iPhone9,1", expected: .iPhone(.iPhone7))
            assertDeviceIdentity(model: "iPhone9,3", expected: .iPhone(.iPhone7))
            assertDeviceIdentity(model: "iPhone9,2", expected: .iPhone(.iPhone7Plus))
            assertDeviceIdentity(model: "iPhone9,4", expected: .iPhone(.iPhone7Plus))
        }
    }
    
    func testThatItParsesTheiPhoneSE() {
        if #available(iOS 9.3, *) {
            assertDeviceIdentity(model: "iPhone8,4", expected: .iPhone(.iPhoneSE))
        }
    }
    
    func testThatItParsesTheiPhone6s() {
        if #available(iOS 9.0, *) {
            assertDeviceIdentity(model: "iPhone8,1", expected: .iPhone(.iPhone6s))
            assertDeviceIdentity(model: "iPhone8,2", expected: .iPhone(.iPhone6sPlus))
        }
    }
    
    func testThatItParsesTheiPhone6() {
        assertDeviceIdentity(model: "iPhone7,2", expected: .iPhone(.iPhone6))
        assertDeviceIdentity(model: "iPhone7,1", expected: .iPhone(.iPhone6Plus))
    }
    
    func testThatItParsesTheiPhone5s() {
        assertDeviceIdentity(model: "iPhone6,1", expected: .iPhone(.iPhone5s))
        assertDeviceIdentity(model: "iPhone6,2", expected: .iPhone(.iPhone5s))
    }
    
    func testThatItParsesUnkonwniPhones() {
        assertDeviceIdentity(model: "iPhoneOther", expected: .iPhone(.unknown))
    }
    
}

class iPadIdentificationTests: XCTestCase {
    
    func testThatItParsesTheiPadProSecondGeneration() {
        if #available(iOS 10.3, *) {
            assertDeviceIdentity(model: "iPad7,1", expected: .iPad(.iPadPro12_9Inch2))
            assertDeviceIdentity(model: "iPad7,2", expected: .iPad(.iPadPro12_9Inch2))
            assertDeviceIdentity(model: "iPad7,3", expected: .iPad(.iPadPro10_5Inch))
            assertDeviceIdentity(model: "iPad7,4", expected: .iPad(.iPadPro10_5Inch))
        }
    }
    
    func testThatItParsesTheiPadFifthGeneration() {
        if #available(iOS 10.3, *) {
            assertDeviceIdentity(model: "iPad6,11", expected: .iPad(.iPad5))
            assertDeviceIdentity(model: "iPad6,12", expected: .iPad(.iPad5))
        }
    }
    
    func testThatItParsesTheiPadProFirstGeneration() {
        if #available(iOS 9.3, *) {
            assertDeviceIdentity(model: "iPad6,3", expected: .iPad(.iPadPro9_7Inch))
            assertDeviceIdentity(model: "iPad6,4", expected: .iPad(.iPadPro9_7Inch))
            assertDeviceIdentity(model: "iPad6,7", expected: .iPad(.iPadPro12_9Inch))
            assertDeviceIdentity(model: "iPad6,8", expected: .iPad(.iPadPro12_9Inch))
        }
    }
    
    func testThatItParsesTheiPadMiniFourthGeneration() {
        if #available(iOS 9.0, *) {
            assertDeviceIdentity(model: "iPad5,1", expected: .iPad(.iPadMini4))
            assertDeviceIdentity(model: "iPad5,2", expected: .iPad(.iPadMini4))
        }
    }
    
    func testThatItParsesTheiPadMiniThirdGeneration() {
        assertDeviceIdentity(model: "iPad4,7", expected: .iPad(.iPadMini3))
        assertDeviceIdentity(model: "iPad4,8", expected: .iPad(.iPadMini3))
        assertDeviceIdentity(model: "iPad4,9", expected: .iPad(.iPadMini3))
    }
    
    func testThatItParsesTheiPadAirSecondGeneration() {
        if #available(iOS 8.1, *) {
            assertDeviceIdentity(model: "iPad5,3", expected: .iPad(.iPadAir2))
            assertDeviceIdentity(model: "iPad5,4", expected: .iPad(.iPadAir2))
        }
    }
    
    func testThatItParsesTheiPadMiniSecondGeneration() {
        assertDeviceIdentity(model: "iPad4,4", expected: .iPad(.iPadMini2))
        assertDeviceIdentity(model: "iPad4,5", expected: .iPad(.iPadMini2))
        assertDeviceIdentity(model: "iPad4,6", expected: .iPad(.iPadMini2))
    }
    
    func testThatItParsesTheiPadAirFirstGeneration() {
        if #available(iOS 8.1, *) {
            assertDeviceIdentity(model: "iPad5,3", expected: .iPad(.iPadAir2))
            assertDeviceIdentity(model: "iPad5,4", expected: .iPad(.iPadAir2))
        }
    }
    
    func testThatItParsesUnkonwniPads() {
        assertDeviceIdentity(model: "iPadOther", expected: .iPad(.unknown))
    }
    
}

class iPodTouchIdentificationTests: XCTestCase {
    
    func testThatItParsesTheiPodTouchSixthGeneration() {
        if #available(iOS 8.4, *) {
            assertDeviceIdentity(model: "iPod7,1", expected: .iPodTouch(.iPodTouch6))
        }
    }
    
    func testThatItParsesUnkonwniPods() {
        assertDeviceIdentity(model: "iPodOther", expected: .iPodTouch(.unknown))
    }
    
}

class SimulatorIdentificationTests: XCTestCase {
    
    func testThatItParsesTheSimulator() {
        assertDeviceIdentity(model: "i386", expected: .simulator)
        assertDeviceIdentity(model: "x86_64", expected: .simulator)
    }
    
}

class UnknownIdentificationTests: XCTestCase {
    
    func testThatItParsesUnknownValues() {
        assertDeviceIdentity(model: "other", expected: .unknown)
    }
    
}
