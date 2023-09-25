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
            .background(Color(red: 0.2, green: 0.15, blue: 0.56))
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
                    .foregroundColor(.blue)
                    .frame(width: 43, height: 20, alignment: .topLeading)
                
            }.offset(y: -40)
            
            HStack {
                VStack{
                    Text("Income")
                    Text("Rs. 15,000")
                }}
            .padding()
            .background(Color.green)
            .cornerRadius(8)
            .offset(x: -110, y: 40)
            .foregroundColor(.white)
            
            HStack {
                VStack{
                    Text("Expense")
                    Text("Rs. 5,000")
                }
            }
            .padding()
            .background(Color.red)
            .cornerRadius(8)
            .offset(x: 110, y: 40)
            .foregroundColor(.white)
            
            
            Rectangle()
                .stroke(Color.blue)
                .frame(width: 330, height: 100)
                .cornerRadius(8)
                .offset(y: 160)
            //                .shadow(radius: 5)
            
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Budget For This Month")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color.black)
                        .offset(x: 40,y: 140)
                }
                HStack{
                    Text("Rs. 10,000")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color.black)
                        .offset(x: 80,y: 140)
                }
                Spacer()
            }
            HStack{
                Text("Recent Transactions")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .offset(x: -80, y: 250)
                
            }
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 340, height: 50)
                .background(.white)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .inset(by: 0.5)
                        .stroke(Color(red: 0.2, green: 0.15, blue: 0.56), lineWidth: 1)
                ).offset(y: 300)
            HStack{
                Text("Education Fee")
                Text("Rs. -10,000.00")
            }
            .offset(y:  300)
                }

            }
        }

    
    struct DashboardView_Previews: PreviewProvider {
        static var previews: some View {
            DashboardView()
        }
    }

