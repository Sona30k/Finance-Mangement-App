
import SwiftUI
import SwiftUICharts
import Charts

// Define the Expense model
struct Expense: Identifiable {
    let id = UUID()
    let name: String
    let amount: Double
}

// Define the MonthlyExpense model for the graph


// Expense tracking page view
struct ExpenseTrackingView: View {
    // Sample data for expenses
    let expenses: [Expense] = [
        Expense(name: "Groceries", amount: 300.0),
        Expense(name: "Rent", amount: 1200.0),
        Expense(name: "Utilities", amount: 150.0),
        Expense(name: "Entertainment", amount: 200.0)
    ]
    
    // Sample data for monthly expenses graph
    let monthlyExpenses: [MonthlyExpense] = [
        MonthlyExpense(month: "Jan", amount: 300),
        MonthlyExpense(month: "Feb", amount: 450),
        MonthlyExpense(month: "Mar", amount: 600),
        MonthlyExpense(month: "Apr", amount: 250),
        MonthlyExpense(month: "May", amount: 700),
        MonthlyExpense(month: "Jun", amount: 500),
        MonthlyExpense(month: "Jul", amount: 800),
        MonthlyExpense(month: "Aug", amount: 550),
        MonthlyExpense(month: "Sep", amount: 400),
        MonthlyExpense(month: "Oct", amount: 650),
        MonthlyExpense(month: "Nov", amount: 300),
        MonthlyExpense(month: "Dec", amount: 750)
    ]
    //sample data for daily  expenses
    let dailyExpenses: [DailyExpense] = [
            DailyExpense(day: Calendar.current.date(byAdding: .day, value: -6, to: Date())!, amount: 100),
            DailyExpense(day: Calendar.current.date(byAdding: .day, value: -5, to: Date())!, amount: 200),
            DailyExpense(day: Calendar.current.date(byAdding: .day, value: -4, to: Date())!, amount: 150),
            DailyExpense(day: Calendar.current.date(byAdding: .day, value: -3, to: Date())!, amount: 300),
            DailyExpense(day: Calendar.current.date(byAdding: .day, value: -2, to: Date())!, amount: 250),
            DailyExpense(day: Calendar.current.date(byAdding: .day, value: -1, to: Date())!, amount: 350),
            DailyExpense(day: Date(), amount: 400)
        ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Total Expenses")
                        .font(.largeTitle)
                        .padding(.bottom, 20)
                    
                    // Expenses list
                    ForEach(expenses) { expense in
                        VStack(alignment: .leading) {
                            Text(expense.name)
                                .font(.headline)
                            Text("$\(expense.amount, specifier: "%.2f")")
                                .foregroundColor(.secondary)
                        }
                        .padding(.bottom, 10)
                    }
                    
                    Divider()
                        .padding(.vertical, 20)
                    
                  
                // Daily Expense Line Graph
                 Text("Daily Expense Graph")
                     .font(.headline)
                     .padding(.bottom, 10)
                 
                 DailyExpensesLineGraph(data: dailyExpenses)
                     .frame(height: 250)
                 
                 Divider()
                     .padding(.vertical, 20)
                    
                   
                // Expense Distribution Pie Chart
                                    Text("Expense Distribution")
                                        .font(.headline)
                                        .padding(.bottom, 10)
                                    
                                    ExpensePieChart(expenses: expenses)
                                        .frame(height: 250)
                    
                    // Monthly Expense Graph
                    Text("Monthly Expense Graph")
                        .font(.headline)
                        .padding(.bottom, 10)
                    
                    ExpensesPerMonthGraph(data: monthlyExpenses)
                        .frame(height: 250)
                    
                }
                
                                    
                                }
                .padding()
            }
            .navigationTitle("Expense Tracker")
        }
    }


// Monthly expenses graph view
struct ExpensesPerMonthGraph: View {
    let data: [MonthlyExpense]
    
    var body: some View {
        Chart {
            ForEach(data) { expense in
                BarMark(
                    x: .value("Month", expense.month),
                    y: .value("Amount", expense.amount)
                )
                .foregroundStyle(.blue)
            }
        }
        .chartXAxisLabel("Month")
        .chartYAxisLabel("Amount")
        .padding()
    }
}

// Daily expenses line graph view
struct DailyExpensesLineGraph: View {
    let data: [DailyExpense]
    
    var body: some View {
        Chart {
            ForEach(data) { expense in
                LineMark(
                    x: .value("Day", expense.day),
                    y: .value("Amount", expense.amount)
                )
                .foregroundStyle(.red)
            }
        }
        .chartXAxisLabel("Day")
        .chartYAxisLabel("Amount")
        .padding()
    }
}

struct ExpensePieChart: View {
    let expenses: [Expense]
    
    var body: some View {
        Chart {
            ForEach(expenses) { expense in
                SectorMark(
                    angle: .value("Amount", expense.amount),
                    innerRadius: .ratio(0.5),
                    outerRadius: .ratio(1.0)
                )
                .foregroundStyle(by: .value("Expense", expense.name))
            }
        }
        .chartXAxisLabel("Expense Type")
        .chartYAxisLabel("Amount")
        .padding()
    }
}
// Preview provider for SwiftUI previews
struct ExpenseTrackingView_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseTrackingView()
    }
}
