//
//  FireCalculatorView.swift
//  PennyPerfect
//
//  Created by Sona kerketta on 05/07/24.
//

import SwiftUI

struct FireCalculatorView: View {
<<<<<<< HEAD

=======
<<<<<<< HEAD
>>>>>>> 1447614b747870aca55fe3c0adeb5b4f1e325c02
    @State private var currentSavings: String = ""
    @State private var annualSavings: String = ""
    @State private var rateOfReturn: String = ""
    @State private var annualExpenses: String = ""
    
    @State private var yearsToFire: Double?

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("FIRE Calculator")
                        .font(.largeTitle)
                        .padding(.top, 20)
                    
                    Group {
                        TextField("Current Savings", text: $currentSavings)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            
                        
                        TextField("Annual Savings", text: $annualSavings)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.decimalPad)
                        
                        TextField("Rate of Return (%)", text: $rateOfReturn)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.decimalPad)
                        
                        TextField("Annual Expenses", text: $annualExpenses)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.decimalPad)
                    }
                    .padding(.horizontal)
                    
                    Button(action: calculateFire) {
                        Text("Calculate FIRE")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal)
                    
                    if let yearsToFire = yearsToFire {
                        Text("You can retire in \(yearsToFire, specifier: "%.1f") years")
                            .font(.headline)
                            .padding(.top, 20)
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("FIRE Calculator")
        }
    }
    
    private func calculateFire() {
        guard let currentSavings = Double(currentSavings),
              let annualSavings = Double(annualSavings),
              let rateOfReturn = Double(rateOfReturn),
              let annualExpenses = Double(annualExpenses) else {
            return
        }
        
        let calculator = FireCalculator(currentSavings: currentSavings, annualSavings: annualSavings, rateOfReturn: rateOfReturn, annualExpenses: annualExpenses)
        yearsToFire = calculator.yearsToFire
    }
}

struct FireCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        FireCalculatorView()
    }
<<<<<<< HEAD
=======
=======
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    FireCalculatorView()
>>>>>>> main
>>>>>>> 1447614b747870aca55fe3c0adeb5b4f1e325c02
}
