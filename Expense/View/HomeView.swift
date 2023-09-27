import SwiftUI

struct HomeView: View {
    @State private var balance = 25000.00

    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()

            VStack(spacing: 20) {
                Text("Dashboard")
                    .font(.largeTitle)
                    .bold()

                Text("19:02")
                    .font(.subheadline)
                    .foregroundColor(.gray)

                Text("Isuru Manawadu")
                    .font(.headline)

                Text("Balance")
                    .font(.title)

                Text("Rs. \(balance)")
                    .font(.title2)
                    .bold()

                Text("Statics")
                    .font(.title)
                    .bold()

                Text("AUG")
                    .font(.headline)

                // You can replace this with a custom pie chart implementation
                PieChartView(data: [
                    PieChartData(value: 15000, label: "Income"),
                    PieChartData(value: 5000, label: "Expense"),
                ])
                .frame(width: 200, height: 200)

                Text("Budget For This Month Rs. 10,000")
                    .font(.subheadline)
                    .foregroundColor(.gray)

                // List of budget items
                List {
                    Section(header: Text("Health")) {
                        Text("Food")
                    }

                    Section(header: Text("Security")) {
                        Text("Clothes")
                    }
                }
            }
            .padding()
        }
    }
}

struct PieChartView: View {
    var data: [PieChartData]

    var body: some View {
        // Implement your custom pie chart here using data
        // You may need to create a custom PieChartShape and use it here
        Text("Pie Chart Goes Here")
    }
}

struct PieChartData {
    var value: Double
    var label: String
}
