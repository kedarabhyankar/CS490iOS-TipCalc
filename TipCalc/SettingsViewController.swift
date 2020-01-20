//
//  SettingsViewController.swift
//  TipCalc
//
//  Created by Kedar Abhyankar on 1/16/20.
//  Copyright © 2020 Kedar Abhyankar. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    let defaults = UserDefaults.standard;
    var selectedDefaultTip = 0.0;
    var segmentedControlForTip: UISegmentedControl! = nil
    
    struct defaultKeys{
        static let defaultTipValue = "defaultTipValue"
        static let defaultCurrency = "defaultCurrency"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkForDefaultTip()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func changeDefaultTip(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0){
            selectedDefaultTip = 0.1
        } else if(sender.selectedSegmentIndex == 1){
            selectedDefaultTip = 0.2
        } else if(sender.selectedSegmentIndex == 2){
            selectedDefaultTip = 0.3
        }
        segmentedControlForTip = sender
        saveDefaultTip()
    }
    
    func saveDefaultTip(){
        defaults.set(selectedDefaultTip, forKey: defaultKeys.defaultTipValue)
    }
    
    func checkForDefaultTip(){
        let preferredTip = defaults.double(forKey: defaultKeys.defaultTipValue)
        if preferredTip == 0.1 {
            segmentedControlForTip.selectedSegmentIndex = 0
        } else if preferredTip == 0.2 {
            segmentedControlForTip.selectedSegmentIndex = 1
        } else if preferredTip == 0.3 {
            segmentedControlForTip.selectedSegmentIndex = 2
        }
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
