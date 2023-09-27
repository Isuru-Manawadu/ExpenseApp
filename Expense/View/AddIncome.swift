//
//  AddIncome.swift
//  Expense
//
//  Created by Isuru Manawadu on 26/09/2023.
//

import SwiftUI

struct AddIncome: View {
    @StateObject var incomeBV: IncomeModel = IncomeModel()
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
                            Text("Your Savings")
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
                                TextField("Amount", text: $incomeBV.amount)
                                    .padding(.leading, 10)
                            }
                    }
                    .padding(.horizontal, 20)
                    
                    VStack {
                        RoundedRectangle(cornerRadius: 70)
                            .foregroundColor(.white)
                            .frame(height: 50)
                            .overlay {
                                SecureField("Description", text: $incomeBV.description)
                                    .padding(.leading, 10)
                            }
                    }
                    .padding(.horizontal, 20)
                    
                    VStack {
                        RoundedRectangle(cornerRadius: 70)
                            .foregroundColor(.white)
                            .frame(height: 50)
                            .overlay {
                                SecureField("Date", text: $incomeBV.date)
                                    .padding(.leading, 10)
                            }
                    }
                    .padding(.horizontal, 20)
                    
                    Button(action: {
                        // Call your addIncome API here
                        // Replace the URL below with your actual API endpoint
                        let url = URL(string: "http://localhost:3000/addIncome")!
                        var request = URLRequest(url: url)
                        request.httpMethod = "POST"
                        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
                        let parameters: [String: Any] = [
                            "email": "isuru@gmail.com",
                            "amount": incomeBV.amount,
                            "description": incomeBV.description,
                            "date": incomeBV.date
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
                    }) {
                        ZStack {
                            LinearGradient(colors: [Color("Blue"), Color("Blue")],
                                           startPoint: .topLeading, endPoint: .bottomTrailing)
                                .ignoresSafeArea(edges: .top)
                                .clipShape(RoundedRectangle(cornerRadius: 70))
                                .frame(height: 50)
                            Text("Add Your Savings")
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

struct AddIncome_Previews: PreviewProvider {
    static var previews: some View {
        AddIncome()
    }
}
