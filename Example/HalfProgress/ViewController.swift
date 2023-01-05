//
//  ViewController.swift
//  HalfProgress
//
//  Created by nur.ahmadullah on 12/06/2022.
//  Copyright (c) 2022 nur.ahmadullah. All rights reserved.
//

import UIKit
import HalfProgress

class ViewController: UIViewController {
    
    @IBOutlet weak var testView: UIView!{
        didSet{
            testView.roundCorners(corners: [.topLeft, .bottomRight], radius: 40)
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

