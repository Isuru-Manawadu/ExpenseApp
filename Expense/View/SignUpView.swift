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
            Color.white.edgesIgnoringSafeArea(.all)
            Color.black.opacity(0.04).ignoresSafeArea()
                
            
            VStack{
                
                LinearGradient(colors: [Color(""), Color("")], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(edges : .leading)
                    .frame(height: 300)
                    .overlay {
                        VStack {
                            Image("a")
                                .resizable()
                                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                                .scaledToFit()
                            
                            Text("Register").font(.system(size: 24))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .multilineTextAlignment(.center)
                                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                                .bold()
                                .foregroundColor(.black)
                                .frame(width: /*@START_MENU_TOKEN@*/104.0/*@END_MENU_TOKEN@*/, height: 60)
                            
                            Text("Create Your Account")
                                .font(.system(size: 18))
                            
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
                    Text("Register")
                        .foregroundColor(.white)
                }.padding(.horizontal , 20)
                
            }
            
            
            VStack{
//                Text("Or")
//                    .foregroundColor(.black)
                    
                Text("Already have an Account?")
                    .offset(x: -20,y:10)
            }.foregroundColor(.black)
            
                Text("Sign In")
                .foregroundColor(.blue)
                .offset(x: 110, y: -30)
            
            VStack{
                HStack{
                    //Facebook Button
                    
//                    Button {
                        
//                    } label: {
//                        ZStack{
//                            Color("Green")
//                                .clipShape(RoundedRectangle(cornerRadius: 10))
//                            HStack{
//                                Image("fb")
//                                Text("Google").foregroundColor(.white)
//                            }
//                        }
//                    }.buttonBorderShape(.capsule)
//                    .offset(y: 10)
                    
                    // Apple
//                    Button {
//
//                    } label: {
//                        ZStack{
//                            Color(.white)
//                                .clipShape(RoundedRectangle(cornerRadius: 10))
//                            HStack{
//                                Image("")
//                                Text("Twitter").foregroundColor(.black)
//                            }
//                        }
//                    }
//                    .offset(y: 10)
                    
                }
            }.padding(.horizontal , 20)
                .frame(height: 50)
            
        }.padding()
            .onTapGesture {
                focus = false
            }
    }
}

