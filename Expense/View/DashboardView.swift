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
            Text("Gasto")
                .font(.system(size: 30, weight: .bold))
                .offset(y: -350)
            VStack {
                Image("credit-card")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300,height: 100)
                    .clipped()
                    .cornerRadius(20)
                
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
                            .weight(.bold)
                    )
                    .foregroundColor(.black)
                    .frame(width: 270, height: 20, alignment: .topLeading)
                
                Text("AUG")
                    .font(
                        Font.custom("Poppins", size: 20)
                            .weight(.heavy)
                    )
                    .foregroundColor(.blue)
                    .frame(width: 50, height: 20, alignment: .topLeading)
                
            }.offset(y: -40)
            
            HStack {
                VStack{
                    Text("Income")
                    Text("")
                }}
            .padding()
            .background(Color(red: 0.47, green: 1, blue: 0.52))
            .cornerRadius(10)
            .offset(x: -110, y: 40)
            .foregroundColor(Color(red: 0.05, green: 0.44, blue: 0.13))
            
            HStack {
                VStack{
                    Text("Expense")
                    Text("")
                }
            }
            .padding()
            .background(Color(red: 1, green: 0.62, blue: 0.62))
            .cornerRadius(10)
            .offset(x: 110, y: 40)
            .foregroundColor(Color(red: 0.38, green: 0.06, blue: 0.06))

            
            
            Rectangle()
                .stroke(Color.blue)
                .frame(width: 330, height: 50)
                .offset(y: 160)
            //                .shadow(radius: 5)
            
            
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Budget For This Month")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color.black)
                        .offset(x: 40,y: 160)
                }
                HStack{
                    Text("Rs. 10,000")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color.black)
                        .offset(x: 80,y: 160)
                }
                Spacer()
            }
            VStack{
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
                    .foregroundColor(Color(red: 0.38, green: 0.06, blue: 0.06))
                Text("Rs. -10,000.00")
                    .foregroundColor(Color(red: 0.38, green: 0.06, blue: 0.06))
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

// Dashboard Completed
