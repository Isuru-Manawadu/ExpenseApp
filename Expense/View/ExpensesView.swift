//
//  ExpensesView.swift
//  Expense
//
//  Created by Isuru Manawadu on 26/09/2023.
//

import SwiftUI

struct ExpensesView: View {
    @StateObject var expenseBV: ExpensesModel = ExpensesModel()
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            Color.white.opacity(0.04).ignoresSafeArea(edges: .top)
            
            VStack {
                LinearGradient(colors: [Color(""), Color("")],
                               startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 200)
                    .overlay {
                        VStack {
                            Text("Your Expenses")
                                .font(.system(size: 30))
                                .bold()
                                .foregroundColor(.black)
                        }
                    }
                
                VStack(spacing: 20) {
                    VStack {
                        RoundedRectangle(cornerRadius: 70)
                            .foregroundColor(.white)
                            .frame(height: 50)
                            .overlay {
                                TextField("Amount", text: $expenseBV.amount1)
                                    .padding(.leading, 10)
                            }
                    }
                    .padding(.horizontal, 20)
                    
                    VStack {
                        RoundedRectangle(cornerRadius: 70)
                            .foregroundColor(.white)
                            .frame(height: 50)
                            .overlay {
                                SecureField("Description", text: $expenseBV.description1)
                                    .padding(.leading, 10)
                            }
                    }
                    .padding(.horizontal, 20)
                    
                    VStack {
                        RoundedRectangle(cornerRadius: 70)
                            .foregroundColor(.white)
                            .frame(height: 50)
                            .overlay {
                                SecureField("Category", text: $expenseBV.category1)
                                    .padding(.leading, 10)
                            }
                    }
                    .padding(.horizontal, 20)
                    
                    VStack {
                        RoundedRectangle(cornerRadius: 70)
                            .foregroundColor(.white)
                            .frame(height: 50)
                            .overlay {
                                SecureField("Date", text: $expenseBV.date1)
                                    .padding(.leading, 10)
                            }
                    }
                    .padding(.horizontal, 20)
                    
                    Button {
                        // Call your addExpense API here
                        // Replace the URL below with your actual API endpoint
                        let url = URL(string: "http://localhost:3000/addExpense")!
                        var request = URLRequest(url: url)
                        request.httpMethod = "POST"
                        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
                        let parameters: [String: Any] = [
                            "email": "exampley5@gmail.com",
                            "amount": expenseBV.amount1,
                            "description": expenseBV.description1,
                            "category": expenseBV.category1,
                            "date": expenseBV.date1
                        ]
                        request.httpBody = try? JSONSerialization.data(withJSONObject: parameters)
                        
                        URLSession.shared.dataTask(with: request) { data, response, error in
                            if let data = data {
                                if let responseJSON = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                                    if let success = responseJSON["success"] as? Bool, let message = responseJSON["message"] as? String {
                                        DispatchQueue.main.async {
                                            showAlert = true
                                            alertMessage = message
                                        }
                                    }
                                }
                            } else {
                                print(error?.localizedDescription ?? "Unknown error")
                            }
                        }.resume()
                    } label: {
                        ZStack {
                            LinearGradient(colors: [Color("Blue"), Color("Blue")],
                                           startPoint: .topLeading, endPoint: .bottomTrailing)
                                .ignoresSafeArea(edges: .top)
                                .clipShape(RoundedRectangle(cornerRadius: 70))
                                .frame(height: 50)
                            Text("Add Your Expenses")
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal, 20)
                    }
                    .offset(y: 10)
                    
                    Spacer()
                }
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Alert"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
        }
    }
}

struct ExpensesView_Previews: PreviewProvider {
    static var previews: some View {
        ExpensesView()
    }
}
