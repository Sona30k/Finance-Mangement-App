//
//  SavingsView.swift
//  PennyPerfect
//
//  Created by Sona kerketta on 05/07/24.
//

import SwiftUI

struct SavingsView: View {
<<<<<<< HEAD

=======
<<<<<<< HEAD
>>>>>>> 1447614b747870aca55fe3c0adeb5b4f1e325c02
    @State private var savingsGoals: [SavingsGoal] = [
        SavingsGoal(name: "Emergency Fund", targetAmount: 5000, currentAmount: 1500)
    ]
    @State private var newGoalName: String = ""
    @State private var newGoalTargetAmount: String = ""
    @State private var newGoalCurrentAmount: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Savings Goals")
                        .font(.largeTitle)
                        .padding(.top, 20)
                    
                    // Savings Goals List
                    Section(header: Text("Current Savings Goals").font(.headline)) {
                        ForEach(savingsGoals) { goal in
                            VStack(alignment: .leading) {
                                Text(goal.name)
                                    .font(.headline)
                                ProgressView(value: goal.currentAmount, total: goal.targetAmount)
                                    .progressViewStyle(LinearProgressViewStyle(tint: .blue))
                                HStack {
                                    Text("Saved: $\(goal.currentAmount, specifier: "%.2f")")
                                    Spacer()
                                    Text("Goal: $\(goal.targetAmount, specifier: "%.2f")")
                                }
                            }
                            .padding()
                            .background(Color(UIColor.secondarySystemBackground))
                            .cornerRadius(10)
                        }
                    }
                    .padding()
                    
                    // Add New Savings Goal
                    Section(header: Text("Add New Savings Goal").font(.headline)) {
                        VStack(alignment: .leading, spacing: 10) {
                            TextField("Goal Name", text: $newGoalName)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            TextField("Target Amount", text: $newGoalTargetAmount)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.decimalPad)
                            TextField("Current Amount", text: $newGoalCurrentAmount)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.decimalPad)
                            Button(action: addSavingsGoal) {
                                Text("Add Goal")
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
            .navigationTitle("Savings")
        }
    }
    
    private func addSavingsGoal() {
        guard let targetAmount = Double(newGoalTargetAmount),
              let currentAmount = Double(newGoalCurrentAmount),
              !newGoalName.isEmpty else { return }
        
        let newGoal = SavingsGoal(name: newGoalName, targetAmount: targetAmount, currentAmount: currentAmount)
        savingsGoals.append(newGoal)
        
        newGoalName = ""
        newGoalTargetAmount = ""
        newGoalCurrentAmount = ""
    }
}

struct SavingsView_Previews: PreviewProvider {
    static var previews: some View {
        SavingsView()
    }
<<<<<<< HEAD
=======
=======
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SavingsView()
>>>>>>> main
>>>>>>> 1447614b747870aca55fe3c0adeb5b4f1e325c02
}
