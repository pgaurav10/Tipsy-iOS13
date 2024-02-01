//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Gaurav Patil on 1/21/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var perPersonCost: UILabel!
    @IBOutlet weak var detailedMsg: UILabel!
    var bill: Billbrain?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        perPersonCost.text = String(bill?.getCost() ?? 0.0)
        detailedMsg.text = bill?.getMsg()
        
    }
    

    @IBAction func reCalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
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
