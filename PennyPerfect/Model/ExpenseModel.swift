//
//  ExpenseModel.swift
//  PennyPerfect
//
//  Created by Sona kerketta on 05/07/24.
//
import SwiftUI
struct Expense: Identifiable {
    var id = UUID()
    var name: String
    var amount: Double
}

enum ExpenseCategory: String, CaseIterable {
    case groceries = "Groceries"
    case rent = "Rent"
    case utilities = "Utilities"
    case entertainment = "Entertainment"
    // Add more categories as needed

    var color: Color {
        switch self {
        case .groceries: return Color.blue
        case .rent: return Color.green
        case .utilities: return Color.orange
        case .entertainment: return Color.purple
        }
    }
}
