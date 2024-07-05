import SwiftUI

struct FinanceManagerApp: App {
    var body: some Scene {
        WindowGroup {
            MainTabView()
        }
    }
}

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }

            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }

            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }

            AIToolView()
                .tabItem {
                    Label("AI Tool", systemImage: "brain.head.profile")
                }

            MessagesView()
                .tabItem {
                    Label("Messages", systemImage: "message.fill")
                }

            SummaryOfExpensesView()
                .tabItem {
                    Label("Summary", systemImage: "chart.pie.fill")
                }
        }
    }
}

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("Finance Manager")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top, 20)

                    NavigationLink(destination: ExpenseTrackingView()) {
                        HomeSectionView(title: "Expense Tracking", imageName: "cart.fill")
                    }

                    NavigationLink(destination: BudgetPlanningView()) {
                        HomeSectionView(title: "Budget Planning", imageName: "chart.pie.fill")
                    }

                    NavigationLink(destination: SavingsView()) {
                        HomeSectionView(title: "Savings", imageName: "banknote.fill")
                    }

                    NavigationLink(destination: InvestmentsView()) {
                        HomeSectionView(title: "Investments", imageName: "chart.bar.fill")
                    }

                    NavigationLink(destination: FireCalculatorView()) {
                        HomeSectionView(title: "FIRE Calculator", imageName: "flame.fill")
                    }

                    NavigationLink(destination: BlogsView()) {
                        HomeSectionView(title: "Blogs", imageName: "book.fill")
                    }
                }
                .padding()
            }
        }
    }
}

struct HomeSectionView: View {
    var title: String
    var imageName: String

    var body: some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(.white)
                .padding()

            Text(title)
                .font(.headline)
                .foregroundColor(.white)

            Spacer()
        }
        .padding()
        .background(Color.blue)
        .cornerRadius(10)
    }
}

struct ExpenseTrackingView: View {
    var body: some View {
        Text("Expense Tracking View")
    }
}

struct BudgetPlanningView: View {
    var body: some View {
        Text("Budget Planning View")
    }
}

struct SavingsView: View {
    var body: some View {
        Text("Savings View")
    }
}

struct InvestmentsView: View {
    var body: some View {
        Text("Investments View")
    }
}

struct FireCalculatorView: View {
    var body: some View {
        Text("FIRE Calculator View")
    }
}

struct BlogsView: View {
    var body: some View {
        Text("Blogs View")
    }
}

struct SearchView: View {
    var body: some View {
        VStack {
            Text("Search")
                .font(.largeTitle)
                .padding()
        }
    }
}

struct ProfileView: View {
    var body: some View {
        VStack {
            Text("Profile")
                .font(.largeTitle)
                .padding()
        }
    }
}

struct AIToolView: View {
    var body: some View {
        VStack {
            Text("AI Tool")
                .font(.largeTitle)
                .padding()
        }
    }
}

struct MessagesView: View {
    var body: some View {
        VStack {
            Text("Messages")
                .font(.largeTitle)
                .padding()
        }
    }
}

struct SummaryOfExpensesView: View {
    var body: some View {
        VStack {
            Text("Summary of Expenses")
                .font(.largeTitle)
                .padding()
        }
    }
}

struct FinanceManagerApp_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
