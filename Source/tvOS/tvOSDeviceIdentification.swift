//
//  tvOSDeviceIdentification.swift
//  HardwareInfo-tvOS
//
//  Created by Jeff Kelley on 11/3/17.
//  Copyright © 2017 Jeff Kelley. All rights reserved.
//

import UIKit

internal func parseDeviceIdentity(from modelString: String) -> AppleTVDevice {
    if let simulatorModelIdentifier = ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"],
        simulatorModelIdentifier != modelString {
        return parseDeviceIdentity(from: simulatorModelIdentifier)
    }
    
    return AppleTVDevice(model: modelString)
}

extension UIDevice {
    public var deviceIdentity: AppleTVDevice {
        guard let modelName = modelName() else { return .unknown }
        
        return parseDeviceIdentity(from: modelName)
    }
}
