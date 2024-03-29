//
//  MonthBudgetView.swift
//  Expense
//
//  Created by Isuru Manawadu on 25/09/2023.
//

import SwiftUI

struct MonthBudgetView: View {
    
    @StateObject var MonthBV : MonthBudgetModel = MonthBudgetModel()
    
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
                            Text("Budget").font(.system(size: 30))
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
                                TextField("Category", text: $MonthBV.Category)
                                    .padding(.leading, 10)
                            }
                    }
                    .padding(.horizontal , 20)
                    
                    VStack{
                        RoundedRectangle(cornerRadius: 70)
                            .foregroundColor(.white)
                            .frame(height: 50)
                            .overlay {
                                SecureField("Duration (Month/Week)", text: $MonthBV.Duration)
                                    .padding(.leading, 10)
                            }
                    }
                    .padding(.horizontal , 20)
                    
                    VStack{
                        RoundedRectangle(cornerRadius: 70)
                            .foregroundColor(.white)
                            .frame(height: 50)
                            .overlay {
                                SecureField("Allocate", text: $MonthBV.Allocate)
                                    .padding(.leading, 10)
                            }
                    }
                    .padding(.horizontal , 20)
                    
                    Button {
                        
                    } label: {
                        
                        ZStack {
                            LinearGradient(colors: [Color("Blue"), Color("Blue")], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(edges : .top).clipShape(RoundedRectangle(cornerRadius: 70))
                                .frame(height: 50)
                            Text("Add")
                                .foregroundColor(.white)
                        }.padding(.horizontal , 20)
                        
                    }
                    
                    .offset(y: 10)
                    
                    
                    Spacer()
                }
                
                
                
            }
        }
    }
}
struct MonthBudgetView_Previews: PreviewProvider {
    static var previews: some View {
        MonthBudgetView ()
    }
}
