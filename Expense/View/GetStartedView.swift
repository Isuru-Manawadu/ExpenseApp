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
            Color.black.edgesIgnoringSafeArea(.all)
            VStack{
                Image("a")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 340)
                    .offset(y: -100)
                
                Button {
                    
                } label: {
                    Text("Sign Up")
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .fontWeight(.semibold)
                            .font(.headline)
                            .frame(height: 30)
                    }.padding(.horizontal)
                    
            }
            
         
            }
        }
    }
    
    struct GetStartedView_Previews: PreviewProvider {
        static var previews: some View {
            GetStartedView()
        }
    }

