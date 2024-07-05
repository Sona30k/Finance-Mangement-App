//
//  InvestmentsModel.swift
//  PennyPerfect
//
//  Created by Sona kerketta on 05/07/24.
//

import SwiftUI

struct Investment: Identifiable {
    let id = UUID()
    var name: String
    var amountInvested: Double
    var currentValue: Double
    
    var profitLoss: Double {
        currentValue - amountInvested
    }
}
