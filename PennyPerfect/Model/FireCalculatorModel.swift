//
//  FireCalculatorModel.swift
//  PennyPerfect
//
//  Created by Sona kerketta on 05/07/24.
//
import SwiftUI

struct FireCalculator {
    var currentSavings: Double
    var annualSavings: Double
    var rateOfReturn: Double
    var annualExpenses: Double

    var fireNumber: Double {
        annualExpenses * 25
    }

    var yearsToFire: Double {
        let rate = rateOfReturn / 100
        let numerator = log((annualSavings * (1 + rate) / fireNumber) + 1)
        let denominator = log(1 + rate)
        return numerator / denominator
    }
}
