//
//  ViewController2.swift
//  tyokinn
//
//  Created by 梶山清美 on 2021/01/17.
//  Copyright © 2021年 梶山清美. All rights reserved.
//

import UIKit

class ViewController2: UIViewController ,UITextFieldDelegate{
    @IBOutlet var situmonn3:UILabel!
    
    @IBOutlet var TextFiled3:UITextField!
    
    @IBOutlet var homuhe:UIButton!
    var imatameteuruokane: Int = 0
    var nannennzutu: Int = 0
    let saveData: UserDefaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        TextFiled3.delegate = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func houmuhe2 (_ sender: Any) {
         saveData.set(TextFiled3.text,forKey: "ima")
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
        
    }
    
}
