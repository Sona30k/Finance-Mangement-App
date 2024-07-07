//
//  BudgetPlanningView.swift
//  PennyPerfect
//
//  Created by Sona kerketta on 05/07/24.
//

import SwiftUI

struct BudgetPlanningView: View {

    @State private var incomeSources: [IncomeSource] = [IncomeSource(name: "Salary", amount: 0.0)]
    @State private var expenseCategories: [ExpenseCategory] = [ExpenseCategory(name: "Rent", amount: 0.0)]
    @State private var newIncomeSourceName: String = ""
    @State private var newIncomeSourceAmount: String = ""
    @State private var newExpenseCategoryName: String = ""
    @State private var newExpenseCategoryAmount: String = ""
    
    var totalIncome: Double {
        incomeSources.reduce(0) { $0 + $1.amount }
    }
    
    var totalExpenses: Double {
        expenseCategories.reduce(0) { $0 + $1.amount }
    }
    
    var remainingBudget: Double {
        totalIncome - totalExpenses
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Budget Planning")
                        .font(.largeTitle)
                        .padding(.top, 20)
                    
                    // Income Section
                    Section(header: Text("Income Sources").font(.headline)) {
                        ForEach(incomeSources) { income in
                            HStack {
                                Text(income.name)
                                Spacer()
                                Text("$\(income.amount, specifier: "%.2f")")
                            }
                        }
                        
                        // Add new income source
                        HStack {
                            TextField("New Income Source", text: $newIncomeSourceName)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            TextField("Amount", text: $newIncomeSourceAmount)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                
                            Button(action: addIncomeSource) {
                                Text("Add")
                            }
                        }
                    }
                    .padding()
                    
                    // Expense Section
                    Section(header: Text("Expense Categories").font(.headline)) {
                        ForEach(expenseCategories) { expense in
                            HStack {
                                Text(expense.name)
                                Spacer()
                                Text("$\(expense.amount, specifier: "%.2f")")
                            }
                        }
                        
                        // Add new expense category
                        HStack {
                            TextField("New Expense Category", text: $newExpenseCategoryName)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            TextField("Amount", text: $newExpenseCategoryAmount)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                
                            Button(action: addExpenseCategory) {
                                Text("Add")
                            }
                        }
                    }
                    .padding()
                    
                    // Summary Section
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Summary")
                            .font(.headline)
                        HStack {
                            Text("Total Income:")
                            Spacer()
                            Text("$\(totalIncome, specifier: "%.2f")")
                        }
                        HStack {
                            Text("Total Expenses:")
                            Spacer()
                            Text("$\(totalExpenses, specifier: "%.2f")")
                        }
                        HStack {
                            Text("Remaining Budget:")
                            Spacer()
                            Text("$\(remainingBudget, specifier: "%.2f")")
                                .foregroundColor(remainingBudget >= 0 ? .green : .red)
                        }
                    }
                    .padding()
                }
                .padding(.horizontal)
            }
            .navigationTitle("Budget Planning")
        }
    }
    
    private func addIncomeSource() {
        guard let amount = Double(newIncomeSourceAmount), !newIncomeSourceName.isEmpty else { return }
        let newIncomeSource = IncomeSource(name: newIncomeSourceName, amount: amount)
        incomeSources.append(newIncomeSource)
        newIncomeSourceName = ""
        newIncomeSourceAmount = ""
    }
    
    private func addExpenseCategory() {
        guard let amount = Double(newExpenseCategoryAmount), !newExpenseCategoryName.isEmpty else { return }
        let newExpenseCategory = ExpenseCategory(name: newExpenseCategoryName, amount: amount)
        expenseCategories.append(newExpenseCategory)
        newExpenseCategoryName = ""
        newExpenseCategoryAmount = ""
    }
}

struct IncomeSource: Identifiable {
    let id = UUID()
    let name: String
    let amount: Double
}

struct ExpenseCategory: Identifiable {
    let id = UUID()
    let name: String
    let amount: Double
}

struct BudgetPlanningView_Previews: PreviewProvider {
    static var previews: some View {
        BudgetPlanningView()
    }
}
