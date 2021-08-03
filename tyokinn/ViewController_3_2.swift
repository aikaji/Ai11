//
//  ViewController 3_2.swift
//  tyokinn
//
//  Created by 梶山清美 on 2021/01/17.
//  Copyright © 2021年 梶山清美. All rights reserved.
//

import UIKit

class ViewController_3_2: UIViewController {
    @IBOutlet var Label1: UILabel!
    @IBOutlet var Label2: UILabel!
    
    var ato: Int = 0
    var wariai: Int = 0
    var syojikinn: Int = 0
    let saveData: UserDefaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
ato = saveData.integer(forKey: "dekireba")
        wariai = saveData.integer(forKey: "title")        // Do any additional setup after loading the view.
        syojikinn = saveData.float(forKey: "ima")
        Label1.text = String("目標まであと\(ato - syojikinn)円！")
        Label2.text = String("1ヶ月で\((ato - syojikinn)/wariai)円ずつ貯めれば\(wariai)ヶ月でたまるよ！")
        print(ato)
        print(wariai)
        print(syojikinn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func back (_sender: Any){
        self.presentingViewController?.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
