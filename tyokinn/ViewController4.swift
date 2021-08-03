//
//  ViewController4.swift
//  tyokinn
//
//  Created by 梶山清美 on 2021/01/17.
//  Copyright © 2021年 梶山清美. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController4: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let saveData = UserDefaults.standard
    
    

    
    
    var items = ["節約できるもの","節約できるもの","節約できるもの","節約できるもの","節約できるもの"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"cell")
        cell?.textLabel?.text = items[indexPath.row]
        return cell!
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true

    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            items.remove(at: indexPath.row)
            self.tableview.reloadData()
        }
    }
    
    @IBOutlet var tableview: UITableView!
    
    let sound = AVAudioPlayer()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if var data = saveData.object(forKey:"setuyaku")
            as? [String] {
            
            items = data
            tableview.reloadData()
        } else {
            var data: [String] = []
            items = data
            tableview.reloadData()
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        
        
      
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func kann1(_ sender: Any) {
        
        sound.play()
    }
        
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
        

    @IBAction func kann2(_ sender: Any) {
        sound.play()
 }
    @IBAction func kann3(_ sender: Any) {
        sound.play()
}
    @IBAction func kann4(_ sender: Any) {
        sound.play()
}
    @IBAction func kann5(_ sender: Any) {
        sound.play()
}
    @IBAction func kann6(_ sender: Any) {
        sound.play()
}
    
    @IBAction func pluss2(_ sender: Any) {

        
        
        
        
}
    
}
