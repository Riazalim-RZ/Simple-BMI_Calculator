//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by Riaz Alim on 17/10/2022.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
           return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advoice ?? "No advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
        
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue =  weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advoice: "Eat more pies!", color: #colorLiteral(red: 255/255, green: 189/255, blue: 51/255, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advoice: "Fit is a fiddle!", color: #colorLiteral(red: 255/255, green: 219/255, blue: 51/255, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advoice: "Eat less piese!", color: #colorLiteral(red: 189/255, green: 255/255, blue: 51/255, alpha: 1))
        }
    }
}
