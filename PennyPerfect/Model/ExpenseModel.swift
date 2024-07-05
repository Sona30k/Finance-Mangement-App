//
//  ExpenseModel.swift
//  PennyPerfect
//
//  Created by Sona kerketta on 06/07/24.
//

import Foundation

struct MonthlyExpense: Identifiable {
    let id = UUID()
    let month: String
    let amount: Double
}

// Define the DailyExpense model for the graph
struct DailyExpense: Identifiable {
    let id = UUID()
    let day: Date
    let amount: Double
}
