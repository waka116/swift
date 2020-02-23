//
//  ViewController.swift
//  swift_test
//
//  Created by waka on 2020/02/23.
//  Copyright © 2020 waka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBOutlet weak var inputdata: UITextField!
    
    
    @IBOutlet weak var label2: UILabel!

    //保存
    func showEncounterMessage() {
        // UserDefaultsの参照
        let userDefaults = UserDefaults.standard
        
        // sampleというキーで値「aiueo」を保存する
        userDefaults.set(inputdata.text!, forKey: "sample")
        
        // UserDefaultsへの値の保存を明示的に行う
        userDefaults.synchronize()
        
    }
    
    
    @IBAction func save(_ sender: Any) {
        showEncounterMessage()


    }
    
    //表示
    @IBAction func button3(_ sender: Any) {
        

        
        // UserDefaultsの参照
        let userDefaults = UserDefaults.standard
        
        // sampleというキーを指定して保存していたString型の値を取り出す
        let value = userDefaults.string(forKey: "sample")
        
        label2.text = value
        
       // label2.text = value
    }
    
}

