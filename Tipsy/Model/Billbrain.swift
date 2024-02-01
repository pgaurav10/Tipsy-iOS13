//
//  Billbrain.swift
//  Tipsy
//
//  Created by Gaurav Patil on 1/21/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Billbrain {
    let billAmount: Float?
    let noOfPeople: Int?
    let tipPct: Int?
    
    init(billAmount: Float?, noOfPeople: Int?, tipPct: Int?) {
        self.billAmount = billAmount
        self.noOfPeople = noOfPeople
        self.tipPct = tipPct
    }
    
    func getCost() -> Float {
        
        var tip: Float
        if tipPct! == 0 {
            tip = 0
        } else {
            
            tip = Float(self.billAmount ?? 0) * Float(self.tipPct!)/100
            print(tip)
        }
        
        let totalBill = Float(self.billAmount ?? 0) + tip
        let perPersonAmt = totalBill/Float(self.noOfPeople ?? 0)
        
        return perPersonAmt
    }
    
    func getMsg() -> String {
        return "Split between \(self.noOfPeople ?? 2) people, with \(self.tipPct ?? 0)% tip."
    }
}
