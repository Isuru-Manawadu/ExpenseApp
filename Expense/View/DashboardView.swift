//
//  DashboardView.swift
//  Expense
//
//  Created by Isuru Manawadu on 24/09/2023.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        ZStack{
            
//            VStack{
//                Text("Isuru Manawadu")
//                    .font(Font.custom("Poppins", size: 18))
//                    .foregroundColor(.black)
//                    .frame(width: 260, height: 680, alignment: .topLeading)
//
//            }
//            VStack{
//                Rectangle()
//                    .foregroundColor(.clear)
//                    .frame(width: 340, height: 163, alignment: .top)
//                    .background(Color(red: 0.2, green: 0.15, blue: 0.56))
//                    .cornerRadius(20)
//                    .ignoresSafeArea()
//                    .offset(y: -200)
//
//                Text("Total Balance")
//                    .font(Font.custom("Poppins", size: 15 ))
//                    .foregroundColor(.white)
//
//                    .offset(y: -340)
//            }
//        }
            VStack {
                        Image("credit-card")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300,height: 100)
                            .clipped()
                            .cornerRadius(8)

                        Text("Total Balance")
                            .font(.system(size: 16, weight: .bold))
                            .padding(.top, 8)
                            .offset(y: -60)

                        Text("Rs. 25,000.00")
                            .font(.system(size: 24, weight: .semibold))
                            .padding(.top, 4)
                            .offset(y: -50)
                            
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(8)
                    .shadow(radius: 5)
                    .offset(y: -200)
                    
            HStack{
                Text("Statics")
                  .font(
                    Font.custom("Poppins", size: 18)
                      .weight(.medium)
                  )
                  .foregroundColor(.black)
                  .frame(width: 270, height: 20, alignment: .topLeading)
                
                Text("AUG")
                  .font(
                    Font.custom("Poppins", size: 18)
                      .weight(.medium)
                  )
                  .foregroundColor(Color(red: 0.14, green: 0.92, blue: 0.12))
                  .frame(width: 43, height: 20, alignment: .topLeading)
                  
            }.offset(y: -40)
            
            HStack{
                
            }
            
            }
        }
    }


struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
