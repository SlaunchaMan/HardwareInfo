//
//  tvOSDeviceIdentificationTests.swift
//  HardwareInfoTests-tvOS
//
//  Created by Jeff Kelley on 11/3/17.
//  Copyright © 2017 Jeff Kelley. All rights reserved.
//

import XCTest
@testable import HardwareInfo

class tvOSDeviceIdentificationTests: XCTestCase {

    func testThatItParsesTheAppleTV4K() {
        if #available(tvOS 11.0, *) {
            XCTAssertEqual(AppleTVDevice(model: "AppleTV6,2"), .AppleTV4K)
        }
    }
    
    func testThatItParsesTheAppleTV() {
        XCTAssertEqual(AppleTVDevice(model: "AppleTV5,3"), .AppleTV)
    }
    
}
