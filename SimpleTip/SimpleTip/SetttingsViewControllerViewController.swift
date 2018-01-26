//
//  SettingsVeiwControllerViewController.swift
//  SimpleTip
//
//  Created by Mario Martinez on 1/24/18.
//  Copyright © 2018 Mario Martinez. All rights reserved.
//

import UIKit

class SettingsVeiwControllerViewController: UIViewController {

    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        
        tipControl.selectedSegmentIndex = defaults.integer(forKey: "defaultTip")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func defaultTip(_ sender: Any) {
        print(tipControl.selectedSegmentIndex)
        
        let defaults = UserDefaults.standard
        
        defaults.set(tipControl.selectedSegmentIndex, forKey: "defaultTip")
        
        defaults.synchronize()
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
