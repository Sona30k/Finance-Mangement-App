import SwiftUI
import SwiftUICharts

struct ExpenseTrackView: View {
    let expenses: [Expense] = [
        Expense(name: "Groceries", amount: 300.0),
        Expense(name: "Rent", amount: 1200.0),
        Expense(name: "Utilities", amount: 150.0),
        Expense(name: "Entertainment", amount: 200.0)
        // Add more expenses as needed
    ]

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Expense Tracking")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 20)

                // Calculate total expenses to determine percentages
                let totalExpense = expenses.reduce(0.0) { $0 + $1.amount }
                let expensePercentages = expenses.map { $0.amount / totalExpense }

                PieChartView(data: expensePercentages, title: "Expenses Distribution", legend: "By Category")
                    .aspectRatio(1, contentMode: .fit)
                    .padding()
            }
            .padding()
        }
    }
}

struct ExpenseTrackView_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseTrackView()
    }
}
