//
//  ViewController.swift
//  TipCal
//
//  Created by Alexis Chen on 1/20/20.
//  Copyright © 2020 Alexis Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        //dismiss the keyboard
        view.endEditing(true)
    }
    
    @IBAction func calculateTips(_ sender: Any) {
        
        //get the bill
        let amount = Double(billField.text!) ?? 0    //if things on the left is not valid, it becomes 0
        
        //calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = amount * tipPercentages[tipControl.selectedSegmentIndex] //TODO
        let total = tip + amount
        
        //update tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

