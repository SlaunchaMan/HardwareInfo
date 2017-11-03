//
//  ViewController.swift
//  HardwareInfoExample
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
            switch UIDevice.current.deviceIdentity {
            case .iPhone(let model):
                label.text = model.marketingName

            case .iPad(let model):
                label.text = model.marketingName

            case .iPodTouch(let model):
                label.text = model.marketingName
                
            case .simulator:
                label.text = "Simulator"
                
            default:
                label.text = "Unknown"
            }
        }
    }

}
