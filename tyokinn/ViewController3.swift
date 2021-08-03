//
//  ViewController3.swift
//  ORI
//
//  Created by 梶山清美 on 2019/11/21.
//  Copyright © 2019年 梶山清美. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { (t) in
           self.performSegue(withIdentifier: "modoru", sender: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
