//
//  SignUpView.swift
//  Expense
//
//  Created by Isuru Manawadu on 23/09/2023.
//

import SwiftUI

struct SignUpView: View {
    
    @StateObject var loginVM : LoginViewModel = LoginViewModel()
    
    
    
    var body: some View {
        
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            Color.black.opacity(0.04).ignoresSafeArea()
                
            
            VStack{
                
                LinearGradient(colors: [Color(""), Color("")], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(edges : .top)
                    .frame(height: 300)
                    .overlay {
                        VStack {
                            Text("Sign Up").font(.system(size: 24))
                                .bold()
                                .foregroundColor(.white)
                            Image("a")
                                .resizable()
                                .scaledToFit()
                        }
                    }
                
                BottomControllers(loginVM: loginVM)
                Spacer()
            }
//            .sheet(isPresented: $loginVM.showSignInView) {
//                SignInView()
//            }
            
            NavigationLink(isActive: $loginVM.showSignInView) {
                LoginView()
            } label: {
            
            }

            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

struct BottomControllers: View {
    

    @ObservedObject var loginVM : LoginViewModel
    @FocusState var focus
    
    var body: some View {
        VStack (spacing: 20){
            VStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.white)
                    .frame(height: 50)
                    .overlay {
                        TextField("Email", text: $loginVM.email)
                            .padding(.leading, 10)
                            .focused($focus)
                    }
            }
            .padding(.horizontal , 20)
            
            VStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.white)
                    .frame(height: 50)
                    .overlay {
                        SecureField("Password", text: $loginVM.password)
                            .padding(.leading, 10)
                            .focused($focus)
                    }
            }
            .padding(.horizontal , 20)
            
            VStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.white)
                    .frame(height: 50)
                    .overlay {
                        SecureField("Confirm Password", text: $loginVM.confirmPassword)
                            .padding(.leading, 10)
                            .focused($focus)
                    }
            }
            .padding(.horizontal , 20)
            
            
            Button {
                loginVM.showSignInView = true
            } label: {
                
                ZStack {
                    LinearGradient(colors: [Color("Blue"), Color("Blue")], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(edges : .top).clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(height: 50)
                    Text("Sign Up")
                        .foregroundColor(.white)
                }.padding(.horizontal , 20)
                
            }
            
            
            VStack{
                Text("Or")
                    .foregroundColor(.white)
                    
                Text("Continue with your Social Accounts")
                    .offset(y:10)
            }.foregroundColor(.white)
            
            VStack{
                HStack{
                    //Facebook Button
                    
                    Button {
                        
                    } label: {
                        ZStack{
                            Color("Green")
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            HStack{
                                Image("fb")
                                Text("Google").foregroundColor(.white)
                            }
                        }
                    }.buttonBorderShape(.capsule)
                    .offset(y: 10)
                    
                    // Apple
                    Button {
                        
                    } label: {
                        ZStack{
                            Color(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            HStack{
                                Image("")
                                Text("X").foregroundColor(.black)
                            }
                        }
                    }
                    .offset(y: 10)
                    
                }
            }.padding(.horizontal , 20)
                .frame(height: 50)
            
        }.padding()
            .onTapGesture {
                focus = false
            }
    }
}

