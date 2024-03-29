//
//  StatisticScreen.swift
//  Expense
//
//  Created by Isuru Manawadu on 27/09/2023.
//

import SwiftUI

struct StatisticScreen: View {
    @State private var isAddIncomeViewPresented = false
    @State private var isExpensesViewPresented = false

    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(filters, id: \.self) { item in
                        // FilterView(title: item)
                    }
                }
            }
            .frame(height: 50)
            .padding(.bottom, 30)

            ZStack(alignment: .center) {
                CircularProgressView()
                    .frame(width: 190, height: 190)

                VStack {
                    Button(action: {
                        isAddIncomeViewPresented.toggle()
                    }) {
                        ZStack {
                            LinearGradient(colors: [Color("green"), Color("green")], startPoint: .topLeading, endPoint: .bottomTrailing)
                                .ignoresSafeArea(edges: .top)
                                .clipShape(RoundedRectangle(cornerRadius: 70))
                                .frame(width: 90, height: 90)

                            Text("add")
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal, 20)
                    }
                    .offset(x: 130, y: 410)

                    Button(action: {
                        // Handle checking balance
                    }) {
                        ZStack {
                            LinearGradient(colors: [Color("pink"), Color("pink")], startPoint: .topLeading, endPoint: .bottomTrailing)
                                .ignoresSafeArea(edges: .top)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .frame(width: 130, height: 60)

                            Text("Balance")
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal, 20)
                    }
                    .offset(y: 330)

                    Button(action: {
                        isExpensesViewPresented.toggle() // Toggle ExpensesView
                    }) {
                        ZStack {
                            LinearGradient(colors: [Color("red"), Color("red")], startPoint: .topLeading, endPoint: .bottomTrailing)
                                .ignoresSafeArea(edges: .top)
                                .clipShape(RoundedRectangle(cornerRadius: 70))
                                .frame(width: 90, height: 90)

                            Text("Exp")
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal, 20)
                    }
                    .offset(x: -130, y: 240)

                    Text("Income")
                        .font(.headline)
                        .foregroundColor(.gray)
                        .offset(y: -50)

                    Text("$12,345.22")
                        .fontWeight(.bold)
                        .offset(y: -90)
                }.offset(y: -100)
            }
            .offset(y: -130)
            .padding(.bottom)

            VStack {
                Text("$2,789.99")
                    .fontWeight(.bold)
                    .offset(y: -290)

                Text("Expenses")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .offset(y: -290)
            }
            
            

            Spacer()
            
            HStack(alignment: .firstTextBaseline) {
                              Text("Activity")
                                  .font(.title2)
                                  .fontWeight(.bold)
                              
                              Text("recently added")
                                  .font(.footnote)
                                  .foregroundColor(.gray)
                                  .fontWeight(.bold)
                                  .padding(.leading, 10)
                          }
            .offset(y: -0)
            
            VStack(alignment: .leading) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(templetes, id: \.name) { templete in
                            TempleteItemView(templete: templete)
                        }
                    }
                }
                .frame(height: 250)
                .offset(y: -40)
                
            }
            .padding(.leading, 35)
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .sheet(isPresented: $isAddIncomeViewPresented) {
            AddIncome(isPresented: $isAddIncomeViewPresented)
        }
        .sheet(isPresented: $isExpensesViewPresented) {
            ExpensesView()
            Text("")
        }
    }
}

struct StatisticScreen_Previews: PreviewProvider {
    static var previews: some View {
        StatisticScreen()
    }
}
