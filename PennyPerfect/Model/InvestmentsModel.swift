//
//  InvestmentsModel.swift
//  PennyPerfect
//
//  Created by Sona kerketta on 05/07/24.
//

import SwiftUI

<<<<<<< HEAD

=======
<<<<<<< HEAD
>>>>>>> 1447614b747870aca55fe3c0adeb5b4f1e325c02
struct Investment: Identifiable {
    let id = UUID()
    var name: String
    var amountInvested: Double
    var currentValue: Double
    
    var profitLoss: Double {
        currentValue - amountInvested
    }
}
<<<<<<< HEAD

=======
=======
>>>>>>> 1447614b747870aca55fe3c0adeb5b4f1e325c02
struct InvestmentsModel: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    InvestmentsModel()
}
<<<<<<< HEAD

=======
>>>>>>> main
>>>>>>> 1447614b747870aca55fe3c0adeb5b4f1e325c02
