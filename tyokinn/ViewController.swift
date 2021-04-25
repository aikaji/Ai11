//
//  ViewController.swift
//  tyokinn
//
//  Created by 梶山清美 on 2020/12/20.
//  Copyright © 2020年 梶山清美. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITextFieldDelegate{
    @IBOutlet var situmon2: UILabel!
    @IBOutlet var situmonn1: UILabel!
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var Textfiled2: UITextField!
    @IBOutlet var tuginositumonn: UIButton!
    var mokuhyou: Int = 0
    var hiniti: Int = 0
    let saveData: UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        titleTextField.delegate = self
        Textfiled2.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }

    @IBAction func tuginositumonn2(_ sender: Any) {
        saveData.set(titleTextField.text,forKey: "title")
        saveData.set(Textfiled2.text,forKey: "dekireba")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
}

