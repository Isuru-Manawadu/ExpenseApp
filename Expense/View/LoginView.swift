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
                                Image("c")
                                    .resizable()
                                    .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                                    .scaledToFit()
                                
                                Text("Welcome to Gasto").font(.system(size: 24))
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(1)
                                    .bold()
                                    .foregroundColor(.black)
                                    .frame(width: 250, height: 50)
                                    .offset(y: 20)
                                
                                Text("Sign In ")
                                    .font(.system(size: 18))
                                    .offset(y: 20)
 
                            }
                        }
                    
                    
                    VStack(spacing : 20){
                        
                        
                        VStack{
                            RoundedRectangle(cornerRadius: 70)
                                .foregroundColor(.white)
                                .frame(height: 50)
                                .overlay {
                                    TextField("Email", text: $loginVM.email)
                                        .padding(.leading, 10)
                                }
                        }
                        .padding(.horizontal , 20)
                                                
                        VStack{
                            RoundedRectangle(cornerRadius: 70)
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
                                LinearGradient(colors: [Color("Blue"), Color("Blue")], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(edges : .top).clipShape(RoundedRectangle(cornerRadius: 70))
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
                    
                        .offset(y: 0)
                    
                    
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

