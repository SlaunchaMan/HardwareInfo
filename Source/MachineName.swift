//
//  MachineName.swift
//  HardwareInfo
//
//  Created by Jeff Kelley on 11/3/17.
//  Copyright © 2017 Jeff Kelley. All rights reserved.
//

import Foundation

func modelName() -> String? {
    if let simulatorModelIdentifier = ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] {
        return simulatorModelIdentifier
    }
    
    var name = utsname()
    guard uname(&name) == 0 else { return nil }
    
    return String(bytes: Data(bytes: &name.machine, count: Int(_SYS_NAMELEN)),
                  encoding:.ascii)?.trimmingCharacters(in: .controlCharacters)
}
