//
//  ViewController.swift
//  swift_test
//
//  Created by waka on 2020/02/23.
//  Copyright © 2020 waka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var testLabel: UILabel!
    
    
    @IBAction func changeLabel(sender: AnyObject) {
        testLabel.text = "Hello World"
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

