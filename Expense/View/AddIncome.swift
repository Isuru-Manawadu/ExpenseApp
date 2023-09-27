//
//  AddIncome.swift
//  Expense
//
//  Created by Isuru Manawadu on 26/09/2023.
//

import SwiftUI

struct AddIncome : View {
    
    @StateObject var IncomeBV : IncomeModel = IncomeModel()
    
    var body: some View {
        ZStack{
            Color.white.edgesIgnoringSafeArea(.all)
            Color.white.opacity(0.04).ignoresSafeArea(edges : .top)
            
            VStack{
                LinearGradient(colors: [Color(""), Color("")],
                               startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(edges : .top)
                    .frame(height: 200)
                    .overlay {
                        VStack {
                            Text("Your Savings").font(.system(size: 30))
                                .bold()
                                .foregroundColor(.black)
                            
                        }
                    }
                
                
                VStack(spacing : 20){
                    
                    
                    VStack{
                        RoundedRectangle(cornerRadius: 70)
                            .foregroundColor(.white)
                            .frame(height: 50)
                            .overlay {
                                TextField("Amount", text: $IncomeBV.amount)
                                    .padding(.leading, 10)
                            }
                    }
                    .padding(.horizontal , 20)
                    
                    VStack{
                        RoundedRectangle(cornerRadius: 70)
                            .foregroundColor(.white)
                            .frame(height: 50)
                            .overlay {
                                SecureField("Description", text: $IncomeBV.description)
                                    .padding(.leading, 10)
                            }
                    }
                    .padding(.horizontal , 20)

                    
                    VStack{
                        RoundedRectangle(cornerRadius: 70)
                            .foregroundColor(.white)
                            .frame(height: 50)
                            .overlay {
                                SecureField("Date", text: $IncomeBV.date)
                                    .padding(.leading, 10)
                            }
                    }
                    .padding(.horizontal , 20)
                    
                    Button {
                        
                    } label: {
                        
                        ZStack {
                            LinearGradient(colors: [Color("Blue"), Color("Blue")], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(edges : .top).clipShape(RoundedRectangle(cornerRadius: 70))
                                .frame(height: 50)
                            Text("Add Your Savings")
                                .foregroundColor(.white)
                        }.padding(.horizontal , 20)
                        
                    }
                    
                    .offset(y: 10)
                    
                    
                    Spacer()
                }
                
                
                
            }
        }
        
    }}
struct AddIncome_Previews: PreviewProvider {
    static var previews: some View {
        AddIncome()
    }
}
