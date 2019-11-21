//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by lucie on 21/11/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float? = nil
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / (height * height)
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        return bmiTo1DecimalPlace
    }
}
