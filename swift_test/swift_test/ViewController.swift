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
    
    ////////////////////////////
    //入力フォームの設定
    ////////////////////////////
    //年齢
    @IBOutlet weak var inputdata_age: UITextField!
    
    //出力ラベルの設定
    @IBOutlet weak var label2: UILabel!

    //保存
    func showEncounterMessage() {
        // UserDefaultsの参照
        let userDefaults = UserDefaults.standard
        
        ////////////////////////////
        // 入力フォームからxmlに値を保存
        ////////////////////////////
        // 年齢
        userDefaults.set(inputdata_age.text!, forKey: "age")
        
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
        
        // xmlからデータを取得
        let value = userDefaults.string(forKey: "age")
        
        //取得したデータを表示
        label2.text = value
        
    }
    
}

