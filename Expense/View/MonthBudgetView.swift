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
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.white)
                            .frame(height: 50)
                            .overlay {
                                TextField("Category", text: $MonthBV.category)
                                    .padding(.leading, 10)
                            }
                    }
                    .padding(.horizontal , 20)
                                            
                    VStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.white)
                            .frame(height: 50)
                            .overlay {
                                SecureField("Duration (Month/Week)", text: $MonthBV.Duration)
                                    .padding(.leading, 10)
                            }
                    }
                    .padding(.horizontal , 20)
                 
                    Button {
                        
                    } label: {
                        
                        ZStack {
                            LinearGradient(colors: [Color("Blue"), Color("Blue")], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(edges : .top).clipShape(RoundedRectangle(cornerRadius: 10))
                                .frame(height: 50)
                            Text("Add a Category")
                                .foregroundColor(.white)
                        }.padding(.horizontal , 20)
                        
                    }
                    
                    Button {
                        
                    } label: {
                        
                        ZStack {
                            LinearGradient(colors: [Color("Gradient 2"), Color("Gradient 2")], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(edges : .top).clipShape(RoundedRectangle(cornerRadius: 10))
                                .frame(height: 50)
                            Text("Clear Fields")
                                .foregroundColor(.white)
                        }.padding(.horizontal , 20)
                        
                    }
                    
                }.padding()
                
                    .offset(y: -50)
                
                
                Spacer()
            }
            
            
            
        }
    }
}
struct MonthBudgetView_Previews: PreviewProvider {
    static var previews: some View {
        MonthBudgetView ()
    }
}
