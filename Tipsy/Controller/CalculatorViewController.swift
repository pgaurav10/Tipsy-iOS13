//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    var tipPct: Int?
    @IBOutlet weak var noOfPeopleLabel: UILabel!
    @IBOutlet weak var billTotalLabel: UITextField!
    @IBOutlet weak var stepperButton: UIStepper!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    @IBAction func stepperButtonPressed(_ sender: UIStepper) {
        
       
        noOfPeopleLabel.text = String(format: "%.0F", stepperButton.value)
    
    }
    @IBAction func tipChangedPressed(_ sender: UIButton) {
        if sender.currentTitle == "10%" {
            tipPct = 10
        } else if( sender.currentTitle == "20%") {
            tipPct = 20
        } else {
            tipPct = 0
        }
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bill = Billbrain(billAmount: Float(billTotalLabel.text ?? "0.0"), noOfPeople: Int(noOfPeopleLabel.text ?? "2"), tipPct: self.tipPct ?? 0)
            
        }
    }
}

