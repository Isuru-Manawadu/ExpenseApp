//
//  GetStartedView.swift
//  Expense
//
//  Created by Isuru Manawadu on 23/09/2023.
//

import SwiftUI

struct GetStartedView: View {
    var body: some View {
        ZStack{
           
            VStack{
                Image("c")
                    .resizable()
                    .frame(width: 100.0, height: 100)
                    .scaledToFit()
                
                Text("Gasto").font(.system(size: 24))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                    .lineLimit(1)
                    .bold()
                    .foregroundColor(.black)
                    .frame(width: 250, height: 50)
                    .offset(y: 20)
                
                Button {
//                    loginVM.showSignInView = true
                } label: {
                    
                    ZStack {
                        LinearGradient(colors: [Color("Blue"), Color("Blue")], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(edges : .top).clipShape(RoundedRectangle(cornerRadius: 70))
                            .frame(height: 50)
                        Text("Get Started")
                            .foregroundColor(.white)
                           
                    }.padding(.horizontal , 20)
                         .offset(y: 70)
                    
                }
                
                }
            }
        }
    }
    
    struct GetStartedView_Previews: PreviewProvider {
        static var previews: some View {
            GetStartedView()
        }
    }

