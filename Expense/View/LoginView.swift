//
//  LoginView.swift
//  Expense
//
//  Created by Isuru Manawadu on 23/09/2023.
//

import SwiftUI

struct LoginView: View {
   
        @StateObject var loginVM : LoginViewModel = LoginViewModel()
        
        var body: some View {
            ZStack{
                Color.white.edgesIgnoringSafeArea(.all)
                Color.white.opacity(0.04).ignoresSafeArea(edges : .top)
                
                VStack{
                    LinearGradient(colors: [Color(""), Color("")],
                                   startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(edges : .top)
                        .frame(height: 300)
                        .overlay {
                            VStack {
                                Text("Sign In").font(.system(size: 30))
                                    .bold()
                                    .foregroundColor(.black)
                                Image("c")
                                    .resizable()
                                    .scaledToFit()
 
                            }
                        }
                    
                    
                    VStack(spacing : 20){
                        
                        
                        VStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.white)
                                .frame(height: 50)
                                .overlay {
                                    TextField("Email", text: $loginVM.email)
                                        .padding(.leading, 10)
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
                                }
                        }
                        .padding(.horizontal , 20)
                        
                        
                        Button {
                            
                        } label: {
                            
                            ZStack {
                                LinearGradient(colors: [Color("Blue"), Color("Blue")], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(edges : .top).clipShape(RoundedRectangle(cornerRadius: 10))
                                    .frame(height: 50)
                                Text("Sign In")
                                    .foregroundColor(.white)
                            }.padding(.horizontal , 20)
                            
                        }
                        Text("Do you have an account?")
                            .offset(x: -30)
                            .foregroundColor(.black)
                        Text("Sign Up")
                            
                            .foregroundColor(.blue)
                            .offset(x: 100, y: -40)
                            
                        
                    }.padding()
                    
                        .offset(y: 60)
                    
                    
                    Spacer()
                }
                
                
                
            }
        }
    }

    struct SignInView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }

