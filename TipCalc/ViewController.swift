//
//  ViewController.swift
//  TipCalc
//
//  Created by Kedar Abhyankar on 1/15/20.
//  Copyright © 2020 Kedar Abhyankar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentBill: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var calculatedTotal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true);
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //get the bill amount
        //calculate the bill and total
        //update the tip and total labels
        let tipAmounts = [0.1, 0.2, 0.3]
        let bill = Double(currentBill.text!) ?? 0
        let tip = bill * tipAmounts[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipAmount.text = String(format:"$%.2f", tip)
        calculatedTotal.text = String(format:"$%.2f", total);
    }
}
