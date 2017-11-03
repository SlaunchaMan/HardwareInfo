//
//  InterfaceController.swift
//  HardwareInfoWatchExample Extension
//
//  Created by Jeff Kelley on 11/3/17.
//  Copyright © 2017 Jeff Kelley. All rights reserved.
//

import WatchKit
import HardwareInfo

class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var label: WKInterfaceLabel?

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let label = label {
            label.setText(WKInterfaceDevice.current().deviceIdentity.rawValue)
        }
    }
    
}
