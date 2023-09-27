//
//  LoginView.swift
//  Expense
//
//  Created by Isuru Manawadu on 25/09/2023.
//

import SwiftUI

struct LoginView: View {
    @StateObject var loginVM: LoginViewModel = LoginViewModel()
    @State private var showAlert = false
    @State private var alertMessage = ""
    @State private var shouldNavigateToNewHome = false
    @State private var shouldNavigateToSignUpView = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white.edgesIgnoringSafeArea(.all)
                Color.white.opacity(0.04).ignoresSafeArea(edges: .top)
                
                VStack {
                    LinearGradient(colors: [Color(""), Color("")], startPoint: .topLeading, endPoint: .bottomTrailing)
                        .ignoresSafeArea(edges: .top)
                        .frame(height: 300)
                        .overlay {
                            VStack {
                                Image("c")
                                    .resizable()
                                    .frame(width: 100.0, height: 100.0)
                                    .scaledToFit()
                                
                                Text("Welcome to Gasto")
                                    .font(.system(size: 24))
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(1)
                                    .bold()
                                    .foregroundColor(.black)
                                    .frame(width: 250, height: 50)
                                    .offset(y: 20)
                                
                                Text("Sign In")
                                    .font(.system(size: 18))
                            }
                        }
                    
                    VStack(spacing: 20) {
                        VStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.white)
                                .frame(height: 50)
                                .overlay {
                                    TextField("Email", text: $loginVM.email)
                                        .padding(.leading, 10)
                                }
                        }
                        .padding(.horizontal, 20)
                        
                        VStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.white)
                                .frame(height: 50)
                                .overlay {
                                    SecureField("Password", text: $loginVM.password)
                                        .padding(.leading, 10)
                                }
                        }
                        .padding(.horizontal, 20)
                        
                        Button(action: {
                            // Call your login API here
                            // Replace the URL below with your actual API endpoint
                            let url = URL(string: "http://localhost:3000/userLogin")!
                            var request = URLRequest(url: url)
                            request.httpMethod = "POST"
                            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
                            let parameters: [String: Any] = [
                                "email": loginVM.email,
                                "password": loginVM.password
                            ]
                            request.httpBody = try? JSONSerialization.data(withJSONObject: parameters)
                            
                            URLSession.shared.dataTask(with: request) { data, response, error in
                                if let data = data {
                                    if let responseJSON = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                                        if let success = responseJSON["success"] as? Bool {
                                            DispatchQueue.main.async {
                                                if success {
                                                    // Login successful, navigate to DashboardView
                                                    shouldNavigateToNewHome = true
                                                } else {
                                                    // Login failed, show an alert
                                                    if let message = responseJSON["message"] as? String {
                                                        alertMessage = message
                                                    } else {
                                                        alertMessage = "Login failed. Please try again."
                                                    }
                                                    showAlert = true
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    print(error?.localizedDescription ?? "Unknown error")
                                }
                            }.resume()
                        }) {
                            ZStack {
                                LinearGradient(colors: [Color("Blue"), Color("Blue")], startPoint: .topLeading, endPoint: .bottomTrailing)
                                    .ignoresSafeArea(edges: .top)
                                    .clipShape(RoundedRectangle(cornerRadius: 70))
                                    .frame(height: 50)
                                Text("Sign In")
                                    .foregroundColor(.white)
                            }.padding(.horizontal, 20)
                        }
                        
                        
                        Button {
                            
                        } label: {
                            
                            ZStack {
                                LinearGradient(colors: [Color("Blue"), Color("Blue")], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(edges : .top).clipShape(RoundedRectangle(cornerRadius: 70))
                                    .frame(height: 50)
                                Text("Sign Up")
                                    .foregroundColor(.white)
                            }.padding(.horizontal , 20)
                            
                        }
                       
                    }
                }
                .padding()
                .offset(y: 0)
                
                Spacer()
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Alert"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
        }
        .navigationBarHidden(true)
    }
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
    
}
