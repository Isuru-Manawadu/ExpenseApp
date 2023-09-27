//
//  SignUpView.swift
//  Expense
//
//  Created by Isuru Manawadu on 25/09/2023.
//

import SwiftUI

struct SignUpView: View {
    @StateObject var loginVM: LoginViewModel = LoginViewModel()
    @State private var showAlert = false
    @State private var alertMessage = ""
    @State private var shouldNavigateToLogin = false
    @State private var shouldNavigateToNewHome = false

    var body: some View {

        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            Color.black.opacity(0.04).ignoresSafeArea()


            VStack {
                LinearGradient(colors: [Color(""), Color("")], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea(edges: .leading)
                    .frame(height: 300)
                    .overlay {
                        VStack {
                            Image("c")
                                .resizable()
                                .frame(width: 100.0, height: 100.0)
                                .scaledToFit()

                            Text("Sign Up")
                                .font(.system(size: 24))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .lineLimit(2)
                                .bold()
                                .foregroundColor(.black)
                                .frame(width: 104.0, height: 60)

                            Text("Create Your Account")
                                .font(.system(size: 18))
                        }
                    }

                BottomControllers(loginVM: loginVM, showAlert: $showAlert, alertMessage: $alertMessage, shouldNavigateToLogin: $shouldNavigateToLogin, shouldNavigateToNewHome: $shouldNavigateToNewHome)
                Spacer()
            }

            NavigationLink(destination: LoginView(), isActive: $shouldNavigateToLogin) {
                EmptyView()
            }
            
            NavigationLink(destination: NewHome(), isActive: $shouldNavigateToNewHome) {
                EmptyView()
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Alert"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

struct BottomControllers: View {

    @ObservedObject var loginVM: LoginViewModel
    @FocusState var focus
    @Binding var showAlert: Bool
    @Binding var alertMessage: String
    @Binding var shouldNavigateToLogin: Bool
    @Binding var shouldNavigateToNewHome: Bool

    var body: some View {
        VStack(spacing: 20) {
            VStack {
                RoundedRectangle(cornerRadius: 70)
                    .foregroundColor(.white)
                    .frame(height: 50)
                    .overlay {
                        TextField("Email", text: $loginVM.email)
                            .padding(.leading, 10)
                            .focused($focus)
                    }
            }
            .padding(.horizontal, 20)

            VStack {
                RoundedRectangle(cornerRadius: 70)
                    .foregroundColor(.white)
                    .frame(height: 50)
                    .overlay {
                        SecureField("Password", text: $loginVM.password)
                            .padding(.leading, 10)
                            .focused($focus)
                    }
            }
            .padding(.horizontal, 20)

            VStack {
                RoundedRectangle(cornerRadius: 70)
                    .foregroundColor(.white)
                    .frame(height: 50)
                    .overlay {
                        SecureField("Confirm Password", text: $loginVM.confirmPassword)
                            .padding(.leading, 10)
                            .focused($focus)
                    }
            }
            .padding(.horizontal, 20)

            Button {
                if loginVM.password == loginVM.confirmPassword {
                    // Call your registration API here
                    // Replace the URL below with your actual API endpoint
                    let url = URL(string: "http://localhost:3000/register")!
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
                                if let success = responseJSON["success"] as? Bool, let message = responseJSON["message"] as? String {
                                    DispatchQueue.main.async {
                                        showAlert = true
                                        alertMessage = message
                                        if success {
                                            shouldNavigateToLogin = true
                                            shouldNavigateToNewHome = true
                                        }
                                    }
                                }
                            }
                        } else {
                            print(error?.localizedDescription ?? "Unknown error")
                        }
                    }.resume()
                } else {
                    // Show an alert if passwords don't match
                    alertMessage = "Passwords do not match"
                    showAlert = true
                }
            } label: {

                ZStack {
                    LinearGradient(colors: [Color("Blue"), Color("Blue")], startPoint: .topLeading, endPoint: .bottomTrailing)
                        .ignoresSafeArea(edges: .top)
                        .clipShape(RoundedRectangle(cornerRadius: 70))
                        .frame(height: 50)


                    Text("Sign Up")
                        .foregroundColor(.white)
                }
                .padding(.horizontal, 20)

            }

            VStack {
                Text("Already have an Account?")
                    .offset(x: -20, y: 10)
            }
            .foregroundColor(.black)

            NavigationLink(destination: LoginView(), isActive: $shouldNavigateToLogin) {
                Text("Sign In")
                    .foregroundColor(.blue)
                    .offset(x: 110, y: -30)
            }
            .padding(.horizontal, 20)

            VStack {
                HStack {
                    // Add buttons for other social login methods if needed
                }
            }
            .padding(.horizontal, 20)
            .frame(height: 50)
        }
        .padding()
        .onTapGesture {
            focus = false
        }
    }
}
