//
//  FireCalculatorModel.swift
//  PennyPerfect
//
//  Created by Sona kerketta on 05/07/24.
//
<<<<<<< HEAD

=======
<<<<<<< HEAD
>>>>>>> 1447614b747870aca55fe3c0adeb5b4f1e325c02
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
<<<<<<< HEAD
    
}

=======
=======

import SwiftUI
>>>>>>> 1447614b747870aca55fe3c0adeb5b4f1e325c02

struct FireCalculatorModel: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    FireCalculatorModel()
<<<<<<< HEAD

=======
>>>>>>> main
>>>>>>> 1447614b747870aca55fe3c0adeb5b4f1e325c02
}
