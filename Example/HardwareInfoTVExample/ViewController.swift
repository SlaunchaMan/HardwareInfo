//
//  ViewController.swift
//  HardwareInfoTVExample
//
//  Created by Jeff Kelley on 11/3/17.
//  Copyright © 2017 Jeff Kelley. All rights reserved.
//

import UIKit
import HardwareInfo

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let label = label {
            label.text = UIDevice.current.deviceIdentity.rawValue
        }
    }

}
