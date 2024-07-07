//
//  InvestmentsView.swift
//  PennyPerfect
//
//  Created by Sona kerketta on 05/07/24.
//

import SwiftUI

struct InvestmentsView: View {
<<<<<<< HEAD
    @State private var investments: [Investment] = [
        Investment(name: "Stock A", amountInvested: 1000, currentValue: 1200)
    ]
    @State private var newInvestmentName: String = ""
    @State private var newInvestmentAmount: String = ""
    @State private var newInvestmentCurrentValue: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Investments")
                        .font(.largeTitle)
                        .padding(.top, 20)
                    
                    // Investments List
                    Section(header: Text("Current Investments").font(.headline)) {
                        ForEach(investments) { investment in
                            VStack(alignment: .leading) {
                                Text(investment.name)
                                    .font(.headline)
                                HStack {
                                    Text("Invested: $\(investment.amountInvested, specifier: "%.2f")")
                                    Spacer()
                                    Text("Current Value: $\(investment.currentValue, specifier: "%.2f")")
                                }
                                Text("Profit/Loss: $\(investment.profitLoss, specifier: "%.2f")")
                                    .foregroundColor(investment.profitLoss >= 0 ? .green : .red)
                            }
                            .padding()
                            .background(Color(UIColor.secondarySystemBackground))
                            .cornerRadius(10)
                        }
                    }
                    .padding()
                    
                    // Add New Investment
                    Section(header: Text("Add New Investment").font(.headline)) {
                        VStack(alignment: .leading, spacing: 10) {
                            TextField("Investment Name", text: $newInvestmentName)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            TextField("Amount Invested", text: $newInvestmentAmount)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.decimalPad)
                            TextField("Current Value", text: $newInvestmentCurrentValue)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.decimalPad)
                            Button(action: addInvestment) {
                                Text("Add Investment")
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                        }
                        .padding()
                        .background(Color(UIColor.secondarySystemBackground))
                        .cornerRadius(10)
                    }
                    .padding()
                }
                .padding(.horizontal)
            }
            .navigationTitle("Investments")
        }
    }
    
    private func addInvestment() {
        guard let amountInvested = Double(newInvestmentAmount),
              let currentValue = Double(newInvestmentCurrentValue),
              !newInvestmentName.isEmpty else { return }
        
        let newInvestment = Investment(name: newInvestmentName, amountInvested: amountInvested, currentValue: currentValue)
        investments.append(newInvestment)
        
        newInvestmentName = ""
        newInvestmentAmount = ""
        newInvestmentCurrentValue = ""
    }
}

struct InvestmentsView_Previews: PreviewProvider {
    static var previews: some View {
        InvestmentsView()
    }
=======
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    InvestmentsView()
>>>>>>> main
}
